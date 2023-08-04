# py -3 -m pip install Flask  (install libraries in python 3.9 syntax)

# from distutils.log import error
import numpy as np
from flask import Flask, render_template, jsonify, request,redirect
from flask_cors import CORS 
from flask import *
import json
import random
from woocommerce import API
import datetime 
from datetime import date, timedelta
import pymysql
import requests

wcapi = API(
    url='http://medicube.in',
    consumer_key='ck_7e68f56b11c6d6969d64d61014b5a0fd2fa6b121',
    consumer_secret='cs_2e1ff9374dfa2cbbe116dd387b2cfb95aeff8735',
    wpAPI= True,
    version= 'wc/v3',
    timeout=20
)

try:
# Get the machine's IP address
    print("getting ip")
    response = requests.get('https://api.ipify.org?format=json')
    data = response.json()
    public_ip = data['ip']
    #public_ip = "123"
    print("Public IP Address:", public_ip)
#   Write the IP address to a JavaScript file
    javascript_code = f'var server_ip = "http://{public_ip}:5000/";'

    with open("static/js/config.js", "w") as js_file:
        js_file.write(javascript_code)
except ConnectionError:
    print("connect error to find public ip address.")


# global variables
mydb = pymysql.connect(
  #host="localhost",
  host="db",
  user="root",
  password="root",
  database="medicube"
)
try:
    mycursor = mydb.cursor()
    print("DB connected")
except:
    print("DB not connected")
new_session_id=0

app = Flask(__name__)
CORS(app)

@app.route('/test')
def test():
    #return ("hello,  welcome") 
    return jsonify({"ack":"hello,  welcome"}) 

@app.route('/')
def login_page():
    return render_template('login.html') 

@app.route('/home_page')
def home_page():
    return render_template('imarket.html') 

@app.route('/validate_login',methods=['POST'])
def login():
    response={"redirect": ""}
    #try:
    data = request.data     # the data obtained here is in byte format ie [ b'{"username":"sahique","password":"","role":"Admin"}' ]
    print(">>",data)        #  s = data.decode()   >>> code to decode byte string b'hello'
    j_req_data = json.loads(data)
    print(j_req_data['username'],j_req_data['password'],j_req_data['role'])    # the result is a Python dictionary:

    if (j_req_data['role']=="Admin"):
        sql = "SELECT * FROM super_admin WHERE phone= %s  AND password= %s ;"
    elif(j_req_data['role']=="User"):
        sql = "SELECT * FROM customer_reg WHERE phone= %s AND password= %s ;"

    elif(j_req_data['role']=="Finance_admin"):
        sql = "SELECT * FROM medicube.customer_reg WHERE phone= %s AND password= %s ;"
    elif(j_req_data['role']=="Campaign_admin"):
        sql = "SELECT * FROM medicube.staff_reg WHERE phone= %s AND password= %s ;"
    else:
        sql=""
    
    
    values=(j_req_data['username'],j_req_data['password'],)
    mycursor.execute(sql,values)
    myresult = mycursor.fetchall()
    print("myres:",myresult)
    if (len(myresult)==1):  
        new_session_id=random.randint(1,999999)
        print("session_id: ",new_session_id)
        sql_qry= "INSERT INTO medicube.session (session_id, user_id, user_name, user_role,session_status) VALUES (%s,%s,%s,%s,%s) " 
        values=(new_session_id, myresult[0][1], myresult[0][4], j_req_data['role'],"loggedin",)
        mycursor.execute(sql_qry,values)
        mydb.commit()
        print(mycursor.rowcount, "was inserted.")
        #return jsonify(final_data)
        response['redirect']= "/home_page"
    else:
        new_session_id=0
        response['redirect']= "/"
        #reponse="username or passwor incorrect, please try again"
    #except:
        #print("exception occured")
    return jsonify(response,new_session_id)

@app.route('/get_data',methods=['POST','GET'])
def get_data():
    data = request.data     # the data obtained here is in byte format ie [ b'{"username":"sahique","password":"","role":"Admin"}' ]
    final_data=[];  values=()
    json_data={};    config={}; controls={}
    arg_var_status=False;   check=False
    print(">>",data)        #  s = data.decode()   >>> code to decode byte string b'hello'
    y = json.loads(data)
    print(y['event'])    # the result is a Python dictionary:
    
    # get role of of the person using session id
    sql_r = "SELECT * FROM medicube.session WHERE session_id =%s ;"; 
    val=[y['sessionId']]
    mycursor.execute(sql_r,val)
    myres =(mycursor.fetchall())
    print(myres)
    role=myres[0][3]
    if(y['event']=="customer_list"):
        f=open('static/config/customer_list.json')
        json_data = json.load(f)
        #print(json_data)
    
    if(y['event']=="get_user_details"):
        arg_var_status=True
        f=open('static/config/get_user_details.json')
        json_data = json.load(f)
        values=("113",)
        #print(json_data)
    
    if(y['event']=="get_order_list"):
        #since_date="2022-04-07T00:00:00.854Z" 
        till_date=datetime.datetime.now().strftime("%Y-%m-%dT%H:%M:%SZ")
        print(till_date)
        if (role=="User"):
            dummy ="SELECT order_date_time FROM medicube.orders_list WHERE customer_id = (%s) ORDER BY order_date_time DESC LIMIT 1;"
            values=(myres[0][1],)
            print("customer_id",values)
            try:
                mycursor.execute(dummy,values)
                since_date = mycursor.fetchall()
                print("since_date::",since_date)
                
                if (len(since_date) < 1):
                    update_order_dataset(myres[0][1],"","")

                else:
                    update_order_dataset(myres[0][1],since_date[0][0],till_date)
                    values=(myres[0][1],)
                #print(myres[0][1],since_date[0][0],till_date)
            except :
                print("Customer not found")   
                return jsonify("None")
        else:
            since_date= date.today() - timedelta(days=1)
            updated_since_date=since_date.strftime('%Y-%m-%dT%H:%M:%SZ')
            print("yesterday:",updated_since_date)
            update_order_dataset(0,updated_since_date,till_date)
        f=open('static/config/get_order_list.json')
        json_data = json.load(f)
        #print(json_data)

    elif(y['event']=="list_campaign"):
        f=open('static/config/list_campaign.json')
        json_data = json.load(f)
        #print(json_data)

    elif(y['event']=="get_campaign_details"):
        arg_var_status=True
        f=open('static/config/get_campaign_details.json')
        json_data = json.load(f)
        values=("113",)
        #print(json_data)

    elif(y['event']=="get_products_list"):
        f=open('static/config/get_product_list.json')
        json_data = json.load(f)
        #print(json_data)

    elif(y['event']=="get_product_details"):
        arg_var_status=True
        f=open('static/config/get_product_details.json')
        json_data = json.load(f)
        values=("113",)
        #print(json_data)
    
    elif(y['event']=="list_ads"):
        #arg_var_status=True
        f=open('static/config/ads_list.json')
        json_data = json.load(f)
        #print(json_data)
    
    elif(y['event']=="get_settlements"):
        arg_var_status=True
        f=open('static/config/get_settlements.json')
        json_data = json.load(f)
        customer_id=myres[0][1]
        values=(customer_id,)
    
    elif(y['event']=="register_staff"):
        f=open('static/config/register_staff.json')
        json_data = json.load(f)
        

    
    keys=json_data['page_attributes'].keys()
    for k in keys:
        try:
            print("role:",role)
            print("......")
            print((json_data['page_attributes'][k]['roles']))
            if (role in json_data['page_attributes'][k]['roles']):
                config=json_data['page_attributes'][k]
                print("config: ",config)
                check=True
                break
        except Exception as e: print("ERROR:",e)
    print(">>>>>",json_data['query_str'])
    print(check,arg_var_status)
    if(check==True and arg_var_status==False):
        mycursor.execute(json_data['query_str'])
        print("am in the if loop")
    else:
        
        if ((y['event']=="get_order_list" or y['event']=="get_settlements") and role=="User" ):
            mycursor.execute(json_data['query_str2'],values)
        else:
            if (y['event']=="get_order_list" ):
                mycursor.execute(json_data['query_str'],values)
            if (y['event']=="get_settlements"):
                mycursor.execute(json_data['query_str'])
    try:
        row_headers=[x[0] for x in mycursor.description] #this will extract row headers 
        myresult = mycursor.fetchall()
        final_data=[]
        col_no=[]
        '''
        if (y['event']=="list_campaign"):
            for line in myresult:
                line[2]=str(line[2]); line[3]=str(line[3])
        '''
        for result in myresult:
            final_data.append(dict(zip(row_headers,result)))
        json.dumps(final_data)
        #final_data=myresult 
        print(final_data)
    except Exception as e: print(e)
    return jsonify(final_data,config,json_data['controls'])

@app.route('/get_modal_data',methods=['POST','GET'])
def get_modal_data():
    data = request.data     # the data obtained here is in byte format ie [ b'{"username":"sahique","password":"","role":"Admin"}' ]
    final_data=[];  values=(); 
    json_data={};    config={}; controls={}
    arg_var_status=False;   check=False
    print(">>",data)        #  s = data.decode()   >>> code to decode byte string b'hello'
    y = json.loads(data)
    print(y['event'])    # the result is a Python dictionary:
    
    # get role of of the person using session id
    sql_r = "SELECT * FROM medicube.session WHERE session_id =%s ;"; 
    val=[y['sessionId']]
    mycursor.execute(sql_r,val)
    myres =(mycursor.fetchall())
    #print(myres)
    role=myres[0][2]
    
    if(y['event']=="get_user_details"):
        arg_var_status=True
        f=open('static/config/get_user_details.json')
        json_data = json.load(f)
        print("user id",y['user_id'])
        values=(y['user_id'],)
        #print(json_data)
        
    elif(y['event']=="get_campaign_details"):
        print("inside get_campaign_details")
        arg_var_status=True
        f=open('static/config/get_campaign_details.json')
        json_data = json.load(f)
        print("user id",y['user_id'])
        values=(y['user_id'],)
        #print(json_data)

    if(y['event']=="get_order_details"):
        arg_var_status=True
        f=open('static/config/get_user_details.json')
        json_data = json.load(f)
        print("user id",y['user_id'])
        values=(y['user_id'],)
        #print(json_data)

    elif(y['event']=="get_product_details"):
        arg_var_status=True
        f=open('static/config/get_product_details.json')
        json_data = json.load(f)
        print("user id",y['user_id'])
        values=(y['user_id'],)
        #print(json_data)
    
    elif(y['event']=="get_referral_details"):
        print("inside get_referral_details")
        arg_var_status=True
        f=open('static/config/get_campaign_details.json')
        json_data = json.load(f)
        val1=(y['sessionId'],)
        mycursor.execute(json_data['ref_query_str1'],val1)
        res = mycursor.fetchall()
        print(">>>",res)
        mycursor.execute(json_data['ref_query_str2'],res[0])
        result = mycursor.fetchall()
        print(">>>",result)
        return jsonify(result)
        #print(json_data)
    
    elif(y['event']=="get_staff_details"):
        print("inside get_staff_details")
        arg_var_status=True
        f=open('static/config/get_staff_details.json')
        json_data = json.load(f)
        print("user id",y['user_id'])
        values=(y['user_id'],)
        #print(json_data)

    keys=json_data['page_attributes'].keys()
    for k in keys:
        try:
            print("role:",role)
            print("......")
            print((json_data['page_attributes'][k]['roles']))
            if (role in json_data['page_attributes'][k]['roles']):
                config=json_data['page_attributes'][k]
                print("config: " +config)
                check=True
                break
        except Exception as e: print(e)
    print(">>>>>",json_data['query_str'])
    if(check==True and arg_var_status==False):
        mycursor.execute(json_data['query_str'])
    else:
        mycursor.execute(json_data['query_str'],values)
    
    try:
        row_headers=[x[0] for x in mycursor.description] #this will extract row headers 
        myresult = mycursor.fetchall()
        final_data=[]
        col_no=[]
        '''
        if (y['event']=="list_campaign"):
            for line in myresult:
                line[2]=str(line[2]); line[3]=str(line[3])
        '''
        for result in myresult:
            final_data.append(dict(zip(row_headers,result)))
        json.dumps(final_data)
        #final_data=myresult 
        print(final_data)
    except Exception as e: print(e)
    if (arg_var_status==True):
        return jsonify(final_data,json_data['fields'])
    else:
        return jsonify(final_data,config,json_data['controls'])

@app.route('/sync_orders')
def sync_orders():
    today=datetime.datetime.now()#.strftime("%Y-%m-%dT%H:%M:%SZ")
    yesterday = (today - timedelta(days = 1)).strftime("%Y-%m-%dT%H:%M:%SZ")
    print("Yesterday was: ", yesterday)
    result=update_order_dataset(0,yesterday,"")
    return jsonify(result)

@app.route('/update_order',methods=['POST'])
def update_order_dataset(id,since_date,till_date):
    print(id,since_date,till_date)
    
    #odr_list= wcapi.get("orders").json()
    print("iiiidddd:",id)
    if (id==0):
        #odr_list= wcapi.get("orders", params={'per_page': 10, 'page': 1,'after':since_date}).json()
        odr_list= wcapi.get("orders", params={'per_page': 10, 'page': 1,'after':'2022-05-15T00:00:00.854Z'}).json()
    else:
        if(since_date=="" and till_date==""):
            odr_list= wcapi.get("orders", params={'per_page': 10, 'page': 1,'customer':id}).json()
        else:
            odr_list= wcapi.get("orders", params={'per_page': 10, 'page': 1,'after':since_date,'customer':id}).json()
    print(odr_list)
    
    for x in odr_list:
    
        try:
            #print(x['id'],"-",x['customer_id'])
            sql_qry= "INSERT INTO medicube.orders_list (customer_id, order_id, order_value, product_id, order_date_time, coupon_code) VALUES (%s,%s,%s,%s,%s,%s) " 
            if (len(x['line_items'])>0):
                product_id=x['line_items'][(len(x['line_items']))-1]['id']
                order_value=x['line_items'][(len(x['line_items']))-1]['total']
            else:
                product_id=""
                order_value=""
            if (len(x['coupon_lines'])>0):
                coupon_id=x['coupon_lines'][(len(x['coupon_lines']))-1]['code']
            else:
                coupon_id=""
            print("coupon_id::",coupon_id)    
            values=(x['customer_id'],x['id'],order_value,product_id,x['date_created'],coupon_id,)
            mycursor.execute(sql_qry,values)
            mydb.commit()
            print(mycursor.rowcount, "was inserted.")
        except Exception as e:
            print(e)
            return ("success")

@app.route('/get_user_tabs',methods=['POST','GET'])
def get_user_tabs():
    data = request.data 
    y = json.loads(data) 
    print(y['role'])    # the result is a Python dictionary:
    f=open('static/config/user_tabs.json')
    tab_data = json.load(f)
    if (y['role']=="Admin"):
        response=tab_data['Admin']
    elif (y['role']=="User"):
        response=tab_data['User']
    elif (y['role']=="Finance_admin"):
        response=tab_data['Finance_admin']
    elif (y['role']=="Campaign_admin"):
        response=tab_data['Campaign_admin']
    else:
        response=jsonify("role not defined")
    print(response)
    return jsonify(response)

@app.route('/register',methods=['POST','GET'])
def register():
    data = request.data     # the data obtained here is in byte format ie [ b'{"username":"sahique","password":"","role":"Admin"}' ]
    print(">>!!",data)        #  s = data.decode()   >>> code to decode byte string b'hello'
    y = json.loads(data)
    print(y)
    print(y['event'])  
    # registering a new user
    if(y['event']=="register_user" or y['event']=="register_referal" or y['event']=="register_phone_referal"):
        # registering a new user in medicube and then enter data with id into imarket.

        res_data=(wcapi.post("customers", y['data']).json())
        print(res_data)
        #print(res_data.id)
        response=res_data['id']
        init_sql= "SELECT * FROM medicube_reg WHERE phone =%s;"
        mycursor.execute(init_sql,(res_data['billing']['phone'],))
        myres =(mycursor.fetchall())
        print(myres)
        # sql queries
        if (len(myres) >0):
            sql = "UPDATE medicube.customer_reg SET id=%s, first_name=%s, last_name=%s, user_name=%s, email=%s, address1=%s, address2=%s, city=%s, state=%s, postcode=%s, country=%s, status=%s, password=%s WHERE phone=%s;"
        else:
            sql = "INSERT INTO medicube.customer_reg (id, first_name, last_name, user_name, email, phone, address1, address2, city, state, postcode, country, status, password) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"       
        
        # Values for sql queries 
        if (y['event']=="register_referal"):
            values=( res_data['id'], res_data['first_name'], res_data['last_name'], res_data['username'], res_data['email'], res_data['billing']['phone'], res_data['billing']['address_1'], res_data['billing']['address_2'], res_data['billing']['city'], res_data['billing']['state'], res_data['billing']['postcode'], res_data['billing']['country'], 'Enabled',res_data['first_name'],)
        elif (y['event']=="register_phone_referal"):
            values=( res_data['id'], res_data['first_name'], res_data['last_name'], res_data['username'], res_data['email'], res_data['billing']['address_1'], res_data['billing']['address_2'], res_data['billing']['city'], res_data['billing']['state'], res_data['billing']['postcode'], res_data['billing']['country'], y['status'],y['password'],res_data['billing']['phone'],)
        else:
            values=( res_data['id'], res_data['first_name'], res_data['last_name'], res_data['username'], res_data['email'], res_data['billing']['phone'], res_data['billing']['address_1'], res_data['billing']['address_2'], res_data['billing']['city'], res_data['billing']['state'], res_data['billing']['postcode'], res_data['billing']['country'], y['status'],y['password'],)
        
        mycursor.execute(sql,values)
        mydb.commit()
        print(mycursor.rowcount, "was inserted.")
        if(y['event']=="register_referal"):
            mycursor.execute("SELECT user_id FROM medicube.session WHERE session_id=%s",(y['session_id'],))
            id_myres =(mycursor.fetchall())
            print("1111111",id_myres)

            contact_sql="INSERT INTO medicube.referal_contacts (my_id, my_contact_person_name, my_contact_person_phoneno) VALUES (%s,%s,%s);"   
            contact_values=( id_myres[0][0], res_data['first_name'], res_data['billing']['phone'],)      
            mycursor.execute(contact_sql,contact_values)
            mydb.commit()
            print(mycursor.rowcount, "was inserted.")

    if(y['event']=="edit_user"):
        print("insude edit user")
        # registering a new user in medicube and then enter data with id into imarket.
        res_data=(wcapi.post("customers/"+str(y['userID']), y['data']).json())
        print(res_data)
        print(res_data['id'])
        #response=res_data['id']
       
        sql = "UPDATE medicube.customer_reg SET first_name =%s, last_name =%s, user_name=%s, email=%s, phone=%s, address1=%s, address2=%s, city=%s, state=%s, postcode=%s, country=%s, status=%s, password=%s WHERE id = %s"
        values=( res_data['first_name'], res_data['last_name'], res_data['username'], res_data['email'], res_data['billing']['phone'], 
        res_data['billing']['address_1'], res_data['billing']['address_2'], res_data['billing']['city'], res_data['billing']['state'], 
        res_data['billing']['postcode'], res_data['billing']['country'], y['status'],y['password'],res_data['id'],)
        mycursor.execute(sql,values)
        mydb.commit()
        if(mycursor.rowcount == 1):
            #print(mycursor.rowcount, "was inserted.")
            response="Customer data updated"

    if(y['event']=="register_campaign" or y['event']=="edit_register_campaign"):
        #['Campaign_name', '2022-04-19T14:47', '2022-04-26T14:48', '5', '2', '45', 'pending', 'enable']    
        ##################
        product_sql="SELECT product_name, product_link, product_discription FROM medicube.product_list WHERE product_id = %s"
        val=(y['data'][5],)

        mycursor.execute(product_sql,val)
        p_myres =(mycursor.fetchall())
        print("555555555",p_myres)
        #role=myres[0][2]

        ##################

        if(y['userID']==0):
            sql = "INSERT INTO medicube.campaign_list (campaign_name, start_date, stop_date, max_referral_level, no_of_seeds, product_id, status,coupon_use_limit,product_name,product_link,product_description,total_commision, imarket_comission, success_comission, referal_comission,discount,minimum_value) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"       
            ref_comission=int(float(y['data'][8]))-int(float(y['data'][10]))
            print((y['data'][0],y['data'][1],y['data'][2],y['data'][3],y['data'][4],y['data'][5],y['data'][6],y['data'][7],p_myres[0][0],'"'+p_myres[0][1]+'"',p_myres[0][2],y['data'][8],y['data'][9],y['data'][10],ref_comission,y['data'][12],y['data'][13],))
            values=(y['data'][0],y['data'][1],y['data'][2],y['data'][3],y['data'][4],y['data'][5],y['data'][6],y['data'][7],p_myres[0][0],'"'+p_myres[0][1]+'"',p_myres[0][2],y['data'][8],y['data'][9],y['data'][10],ref_comission,y['data'][12],y['data'][13],)
        else:
            print("updateing")
            sql = "UPDATE medicube.campaign_list id, campaign_name, start_date, stop_date, max_referral_level, no_of_seeds, product_id, status,coupon_use_limit,product_name,product_link,product_description,total_commision, imarket_comission, success_comission, referal_comission,discount,minimum_value VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);" 
            sql = "UPDATE medicube.campaign_list SET campaign_name = %s, start_date = %s, stop_date = %s, max_referral_level = %s, no_of_seeds = %s, product_id = %s, status = %s,coupon_use_limit = %s,product_name = %s,product_link = %s,product_description = %s,total_commision = %s, imarket_comission = %s, success_comission = %s, referal_comission = %s,discount = %s,minimum_value = %s WHERE id = %s" 
            ref_comission=int(y['data'][8])-int(y['data'][10])
            values=( y['data'][0],y['data'][1],y['data'][2],y['data'][3],y['data'][4],y['data'][5],y['data'][6],y['data'][7],p_myres[0][0],'"'+p_myres[0][1]+'"',p_myres[0][2],y['data'][8],y['data'][9],y['data'][10],ref_comission,y['data'][12],y['data'][13],y['userID'],)
                  
        mycursor.execute(sql,values)
        mydb.commit()
        response=mycursor.rowcount,y['event'], " was registered."
        print(response)
        
    if(y['event']=="register_staff" or y['event']=="edit_register_staff"):
        if(y['userID']==3):
            sql = "INSERT INTO medicube.staff_reg (first_name, last_name, entity_name, user_name, password, roles, email, phone, adress1, address2, city, state, postcode, country) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"       
            values=(y['data'][1],y['data'][2],y['data'][3],y['data'][4],y['data'][5],y['data'][6],y['data'][7],y['data'][8],y['data'][9],y['data'][10],y['data'][11],y['data'][12],y['data'][13],y['data'][14],)
        else:
            sql = "UPDATE medicube.staff_reg ( first_name, last_name, entity_name, user_name, password, roles, email, phone, adress1, address2, city, state, postcode, country) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"       
            values=(y['data'][1],y['data'][2],y['data'][3],y['data'][4],y['data'][5],y['data'][6],y['data'][7],y['data'][8],y['data'][9],y['data'][10],y['data'][11],y['data'][12],y['data'][13],y['data'][14],)
                  
        mycursor.execute(sql,values)
        mydb.commit()
        response=mycursor.rowcount,y['event'], " was registered."
        print(response)
    
    return jsonify(response)

@app.route('/refer',methods=['POST','GET'])
def refer():
    ack=""; data = request.data    
    print(">>",data)      
    y = json.loads(data)
    print(y)
    # {'camp_id': 499419, 'ref_by': 'imarket_amit5_rao5', 'ref_to': [['amit5_rao_refer_person1', '9879663310'], ['amit5_rao_refer_person2', '8975524680']], 'creator':'system'}
    registered_customer=[]
    if (y['creator']=='phone'):
        for contact in y['ref_to']:
            sql="SELECT * FROM medicube.customer_reg  WHERE phone = (%s) ;"
            mycursor.execute(sql,(contact[1],))
            myres =(mycursor.fetchall())
            print(myres)
            if (len(myres) >0):
                registered_customer.append(contact[1])
            else:
                sql_qry= "INSERT INTO medicube.customer_reg (phone) VALUES (%s);" 
                mycursor.execute(sql_qry,(contact[1],));    mydb.commit()
                print(mycursor.rowcount, "was inserted.")
                
        if (len(registered_customer)>0):    y['ref_to']=[];    y['ref_to'].append(registered_customer);

    sql="SELECT * FROM medicube.campaign_referrals  WHERE campaign_id = (%s) and refered_to= (%s) ORDER BY referral_level DESC LIMIT 1;"
    values=(y['camp_id'],y['ref_by'],)
    mycursor.execute(sql,values)
    myres =(mycursor.fetchall())
    print(myres)
    # [(255175, '499419', '0', 235502, '0', 'imarket_amit5_rao5', 'open', '', None, 5, None, None, None)]
    
    seed=int(myres[0][2])
    level=str(int(myres[0][3])+1)
    dwn_cunt=str(int((myres[0][9]))-1)
    if (dwn_cunt!='0'):
        print("y['ref_to']:::",y['ref_to'])
        for i in y['ref_to']:
            print("iiiiiii",i)
            coupon = {
                "code": "",
                "discount_type": "percent",
                "amount": "10",
                "individual_use": True,
                "exclude_sale_items": True,
                "minimum_amount": "100.00"
            }
            # to check if the person is already referred by the user for perticular campaign
            sql_qry1= "SELECT * FROM medicube.campaign_referrals WHERE campaign_id=%s AND seed_id=%s AND refered_by=%s AND refered_to=%s "
            values=(y['camp_id'],str(seed),y['ref_by'],i[1], )
            mycursor.execute(sql_qry1,values)
            myres1 =(mycursor.fetchall())
            print(myres1)  

            if(len(myres1)==0):
                coupon['code']=str(y['camp_id'])+str(i[1])+str(datetime.datetime.now())
                coupon_res=(wcapi.post("coupons", coupon)).json()
                while(len(coupon_res)<10):
                    print("getting coupon")
                print(coupon_res)
                if ( myres[0][8] != 'None'):
                    
                    path_val=str(myres[0][10])+'-'+str(y['ref_by'])
                    
                    #if (level==1):
                    #    path_val=str(myres[0][10])+'-'+str(y['ref_by'])
                    #else:
                    #    path_val=str(myres[0][10])+'-'+str(y['ref_to'])
                    
                    #seed=int(myres[0][9])-1
                    sql_qry= "INSERT INTO medicube.campaign_referrals (campaign_id, seed_id, referral_level, refered_by, refered_to, status, referral_id, coupon_code,coupon_id, down_counter,path) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s) " 
                    
                    values=(y['camp_id'],seed,level,y['ref_by'],i[1],"open",random.randint(1,999999),coupon['code'],coupon_res['id'],dwn_cunt,path_val, )
                    mycursor.execute(sql_qry,values);mydb.commit()
                    print(mycursor.rowcount, "was inserted.")
                    ack="Refer Successfull"   
                    coupon_res=""     
            else:
                ack="Refer Failed. Person already refered"
    else:
        ack=" Referal limit reached"
    return jsonify(ack)


@app.route('/check_registration',methods=['POST','GET'])
def check_registration():
    ack=[], registered_customer=[]; data = request.data    
    print(">>",data)      
    y = json.loads(data)
    print(y)
    
    '''
    for contact in y:
        sql="SELECT * FROM medicube.customer_reg  WHERE phone = (%s) ;"
        mycursor.execute(sql,(contact,))
        myres =(mycursor.fetchall())
        print(myres)
        if (len(myres) >0):
            registered_customer.append("found")
        else:
            registered_customer.append("not_found")
    '''

    for x in y :
        sql="SELECT * FROM medicube.campaign_referrals  WHERE campaign_id = (%s) and refered_to= (%s) ORDER BY referral_level DESC LIMIT 1;"
        values=(y['camp_id'],y['ref_by'],)
        mycursor.execute(sql,values)
        myres =(mycursor.fetchall())
        print(myres)
        if (len(myres) >0):
            ack.append("found")
        else:
            ack.append("not_found")
        
    return jsonify(ack)

@app.route('/sync_campaigns',methods=['POST','GET'])
def sync_campaigns():
    sql="SELECT * FROM medicube.campaign_list  WHERE status = 'pending';"
    mycursor.execute(sql)
    myres =(mycursor.fetchall())
    print(myres) 
    return jsonify(myres)

@app.route('/check_referral',methods=['POST','GET'])
def check_referral():
    print("checking for referral for individual user")  
    data = request.data     # the data obtained here is in byte format ie [ b'{"username":"sahique"}' ]
    print(">>!!",data)        #  s = data.decode()   >>> code to decode byte string b'hello'
    y = json.loads(data)
    print(y)    #print(y['username'])  

    sql= "SELECT * FROM medicube.campaign_referrals WHERE refered_to =%s;"
    mycursor.execute(sql,(y['username'],))
    result=mycursor.fetchall()
    print(result)
    camp_deatils=[]
    for x in result:
        print("=================")
        print(x[1])
        sql2= " SELECT * FROM medicube.campaign_list  WHERE id=%s"
        mycursor.execute(sql2,((x[1]),))  # [x][1] is the position of the campaign id
        result2=mycursor.fetchall()
        print(result2)
        camp_deatils.append(result2[0])
    print(camp_deatils)
    return jsonify(result,camp_deatils)
    #return jsonify({"ack":"working"})

@app.route('/account_update',methods=['GET'])
def account_update():
    sql= "SELECT id FROM medicube.campaign_list WHERE status = 'closed' WHERE id= %s;"
    mycursor.execute(sql)
    result2=[]
    result3=[]
    result=mycursor.fetchall()
    print(result)

    sql= "SELECT * FROM medicube.orders_list WHERE accounted = 0;"
    mycursor.execute(sql)
    result2=[]
    result3=[]
    result=mycursor.fetchall()
    print(result)
    last_id=result[len(result)-1][0]
    for x in result:
        print("xxxx>>>>",(x[5],))
        # for all new orders update referal tables for coresponding user id by checking coupon code .
        sql2= "SELECT campaign_id, path, coupon_code, referral_id FROM medicube.campaign_referrals WHERE coupon_code=%s;"
        try:
            if(x[5]!=''):
                mycursor.execute(sql2,(x[5],))
                result2=mycursor.fetchall()
                
                print("result2:",result2)
                print("Compare::",x[5],"--",result2[0][2])
                if (x[5]==result2[0][2]):
                    sql3= "SELECT success_comission,referal_comission FROM medicube.campaign_list WHERE id=%s;"
                    print(result2[0][0])
                    
                    try:
                        mycursor.execute( sql3,(result2[0][0],) )
                        result3=mycursor.fetchall()
                        print(result3)
                        try:
                            # calculate_success_comission(customer_id,order_id,path,campaign_id,success_comission)
                            calculate_success_comission(result[0][0],result[0][1],result2[0][1],result2[0][0],result3[0][0])
                            if (last_id==x[0]):
                                
                                print("....")
                                '''
                                succ_log={"success_fee":{"order_id":"", "amount":""}}
                                ref_log={"my_referal_count":"","amount":""}
                                succ_log['success_fee']['order_id']=result[0][1]
                                succ_log['success_fee']['amount']=result3[0][0]
                                ref_log['my_referal_count']=result2[0][1]
                                ref_log['amount']=result3[0][1]
                                print((succ_log),(ref_log))
                                #sql_qry= "INSERT INTO medicube.campaign_referrals (success_fee_history, referal_fee_history, down_counter) VALUES (%s,%s,%s) WHERE referral_id=%s "
                                sql_qry= "UPDATE medicube.campaign_referrals SET success_fee_history=%s , referal_fee_history=%s, down_counter=%s  WHERE referral_id=%s " 
                                values=(json.dumps(succ_log),json.dumps(ref_log),'0',result2[0][3])
                                mycursor.execute(sql_qry,values)
                                mydb.commit()
                                print(mycursor.rowcount, "was inserted.")
                                
                                sql4= "SELECT * FROM medicube.campaign_referrals WHERE campaign_id=%s and referral_level != %s;"
                                
                                try:
                                    mycursor.execute( sql4,(result2[0][0],"0") )
                                    result4=mycursor.fetchall()
                                    print(result4)
                                    orders=[]
                                    for y in result4:
                                        sql5= "SELECT * FROM medicube.order_list WHERE coupon_code=%s;"
                                        try:
                                            mycursor.execute(sql5,(y[7],))
                                            result5=mycursor.fetchall()
                                            print(result5)
                                            orders.append(result5[0])
                                            

                                        except:
                                            print("data related to coupon not found")
                                    camp_history["total_referal_count"]=len(result4)
                                    total_value=0 
                                    for z in orders:
                                        total_value= int(total_value)+int(z[2])
                                    camp_history["total_order_value"]=str(total_value)
                                    camp_history["total_commission_value"]=len(orders)*int(result3[0][0])
                                    camp_history["referal_value"]=str(len(result4)*int(result3[0][1]))  # result3 is referal comission
                                except:
                                    print("no data found")
                                '''
                        except Exception as e:print(e)
                        
                    except: print("success_comission, referal_comission no found")
                # end of if
            # end of if
        except Exception as e: 
            print(e)
            print("no campaign_id and path found")
    return jsonify(result)

def calculate_comission(customer_id,order_id,path,campaign_id,success_comission,referral_comission):
    # None-imarket_mohammed_sahique123-test_sahil_2-Sandeep
    succ_log={"success_fee":{"order_id":"", "amount":""}}
    ref_log={"my_referal_count":"","amount":""}
    print(success_comission,referral_comission,campaign_id)
    candidates=path.split('-')
    candidates.pop(0)
    print(candidates)
    final_ref_com=int(referral_comission)/len(candidates)
    for x in range(0,len(candidates)):
        print("inside_person::",candidates[x])
        succ_log['success_fee']['order_id']=order_id;   succ_log['success_fee']['amount']=success_comission
        ref_log['my_referal_count']=path;               ref_log['amount']=referral_comission
        print((succ_log),(ref_log))
        #=%s,
        sql_qry= "UPDATE medicube.campaign_referrals SET success_fee_history=%s, referal_fee_history=%s, down_counter=%s WHERE campaign_id=%s AND refered_by=%s AND refered_to=%s; "
        if(x==len(candidates)-2):
            print("inside...")
            succ_log['success_fee']['amount']="";   ref_log['amount']=""
            sql_qry2= "UPDATE medicube.campaign_referrals SET success_fee_history=%s, referal_fee_history=%s, down_counter=%s WHERE campaign_id=%s AND refered_to=%s AND referral_level=%s; "
            # sql_qry2= "INSERT INTO medicube.campaign_referrals (success_fee_history, referal_fee_history, down_counter) VALUES (%s,%s,%s) WHERE campaign_id=%s AND refered_by=%s AND refered_to=%s "
            print("///////////////////")
            print(candidates[x],x)
            values2=(json.dumps(succ_log),json.dumps(ref_log),'0',campaign_id,candidates[x+1])
            mycursor.execute(sql_qry2,values2)
            mydb.commit()
            print(mycursor.rowcount, "was inserted.1")

            values=(json.dumps(succ_log),json.dumps(ref_log),'0',campaign_id,candidates[x],candidates[x+1])
            x=x+1
        else:
            values=("",json.dumps(ref_log),'0',campaign_id,candidates[x],candidates[x+1])
        #sql_qry= "UPDATE medicube.campaign_referrals SET success_fee_history=%s , referal_fee_history=%s, down_counter=%s  WHERE referral_id=%s,  " 
        #values=(json.dumps(succ_log),json.dumps(ref_log),'0',result2[0][3])
        mycursor.execute(sql_qry,values)
        mydb.commit()
        print(mycursor.rowcount, "was inserted.2")
        try:
            sql_qry1= "SELECT * FROM medicube.referral_settlements WHERE customer_id=%s AND status=%s; "
            values=(customer_id,"ready",)
            mycursor.execute(sql_qry1,values)
            response =  mycursor.fetchall()
            if(len(response)!=0):
                sql_qry= "INSERT INTO medicube.referral_settlements SET accured_amount=%s WHERE settlement_id=%s;" 
                values=(str(int(response[0][2])+int(final_ref_com)),response[0][0], )
                mycursor.execute(sql_qry,values)
                mydb.commit()
                print(mycursor.rowcount, "was inserted 3.")
            else:
                sql_qry= "INSERT INTO medicube.referral_settlements (settlement_id, customer_id,accured_amount, status) VALUES (%s,%s,%s,%s) " 
                values=(random.randint(1,999999),customer_id,final_ref_com,"ready", )
                mycursor.execute(sql_qry,values)
                mydb.commit()
                print(mycursor.rowcount, "was inserted.4")

        except Exception as e:
            print(e)

def unique(list1):
    x = np.array(list1)
    print(np.unique(x))

def calculate_referal_comission(customer_id,campaign_id,referral_comission):

    '''
     find list of all refferedby candidates for this campaign id.
     Unit_referal_commission = total_referral_budget for this evet/number of refferedby candidates
     filter unique names from list
     for each unique name of candidate,
     { net referral commission to candiate= Number of times that candidate appeared in the list * unit_referral _commission
     }
     add this to settlements amount of this candidate in settlements table and in the same table log, append to history coloum string("ref"+eventid+ammount)
    '''

    sql_qry= "SELECT * FROM medicube.campaign_referrals WHERE campaign_id=%s ; "
    values=(campaign_id,)
    mycursor.execute(sql_qry,values)
    response2 =  mycursor.fetchall()
    Unit_referal_commission= int(referral_comission)/len(response2)
    response=[]
    for x in response2:
        response.append(x[4])
    print("response:",response)

    myset = set(response)
    print("myset:",myset)
    mynewresponse = list(myset)
    print("mynewresponse:",mynewresponse)
    try:
        #response= ['0','imarket', 'imarket_mohammed_sahique123']
        for name in mynewresponse:
            res = response.count(name)
            print("res",res)
            net_referral_commission_to_candiate= int(res)*Unit_referal_commission
            print("net_referral_commission_to_candiate",net_referral_commission_to_candiate)
            points = net_referral_commission_to_candiate*100
            sql_qry2= "UPDATE medicube.campaign_referrals SET referal_fee_history=%s WHERE campaign_id=%s AND refered_by=%s; "
            values2=("ref_"+str(campaign_id)+'_'+str(Unit_referal_commission),campaign_id,name, )
            mycursor.execute(sql_qry2,values2)
            print("done")
            mydb.commit()
            print(mycursor.rowcount, "row was updated.1")

            sql_qry3= "SELECT * FROM medicube.referral_settlements WHERE campaign_id=%s AND customer_id=%s ; "
            values=(campaign_id,customer_id,)
            mycursor.execute(sql_qry3,values)
            response3 =  mycursor.fetchall()
            print("reponse3: ",response3)
            if (len(response3)<1):
                sql_qry3= "INSERT INTO medicube.referral_settlements (settlement_id, campaign_id, customer_id,accured_amount, status, points) VALUES (%s,%s,%s,%s,%s,%d) "
                values3=(random.randint(1,999999), campaign_id,customer_id,str(net_referral_commission_to_candiate),"ready",points, )
                #sql_qry3= "INSERT INTO medicube.referral_settlements (settlement_id, campaign_id, customer_id,accured_amount, status, points) VALUES (%s,%s,%s,%s,%s,%d) "
                #values3=(random.randint(1,999999), campaign_id,customer_id,str(net_referral_commission_to_candiate),"ready",points, )
            else:
    
                sql_qry3= "Update medicube.referral_settlements  SET accured_amount=%s WHERE campaign_id=%s AND customer_id=%s " 
                net_referral_commission_to_candiate=net_referral_commission_to_candiate+float(response3[0][3])
                print(net_referral_commission_to_candiate, (response3[0][3]))
                values3=(str(net_referral_commission_to_candiate),campaign_id,customer_id, )
            print(net_referral_commission_to_candiate)
            
            mycursor.execute(sql_qry3,values3)
            mydb.commit()
            print(mycursor.rowcount, "was inserted.4")
    except Exception as e: print("ERROR:",e)
        
def calculate_success_comission(customer_id,order_id,path,campaign_id,success_comission):
    # None-imarket_mohammed_sahique123-test_sahil_2-Sandeep
    succ_log={"success_fee":{"order_id":"", "amount":""}}
    candidates=path.split('-')
    candidates.pop(0)
    print(candidates)
    indx=0;
    success_comission_split=success_comission.split(',')# total_commision
    sql_qry1= "SELECT total_commision FROM medicube.campaign_list WHERE id=%s ; "
    values=(campaign_id,); mycursor.execute(sql_qry1,values); total_commission=  mycursor.fetchall()
    # total comission format when fetched from the database is '[(10,)]' hence, we use total_commission[0][0] to get only the number.
    print(total_commission[0][0])
    sql_qry2= "SELECT order_value FROM medicube.orders_list WHERE order_id=%s  ; "
    values=(order_id,); mycursor.execute(sql_qry2,values); ordervalue=  mycursor.fetchall(); print(ordervalue[0][0])
    try:
        for x in range(0,len(candidates)-1):
            print("inside_person::",candidates[x])
            print(success_comission_split)
            s_commission=float(success_comission_split[x])/100*float(total_commission[0][0])*float(ordervalue[0][0])
            print(s_commission)
            #add this successcommission to settlements amount of this candidate in settlements table and in the same table log, append to history coloum string("suc"+eventid+ammount)
            sql_qry2= "UPDATE medicube.campaign_referrals SET success_fee_history=%s WHERE campaign_id=%s AND refered_by=%s AND refered_to=%s; "
            values2=("success_"+str(campaign_id)+'_'+str(s_commission),campaign_id,candidates[x],candidates[x+1])
            mycursor.execute(sql_qry2,values2)
            mydb.commit()
            print(mycursor.rowcount, "was inserted.1")

            sql_qry3= "SELECT * FROM medicube.referral_settlements WHERE campaign_id=%s AND customer_id=%s ; "
            values=(campaign_id,customer_id,)
            mycursor.execute(sql_qry3,values)
            response3 =  mycursor.fetchall()
            print("reponse3: ",response3)
            if (len(response3)<1):
                sql_qry3= "INSERT INTO medicube.referral_settlements (settlement_id,  campaign_id, customer_id,accured_amount, status) VALUES (%s,%s,%s,%s,%s) " 
                values3=(random.randint(1,999999), campaign_id,customer_id,s_commission,"ready", )
            else:
    
                sql_qry3= "Update medicube.referral_settlements  SET accured_amount=%s WHERE campaign_id=%s AND customer_id=%s " 
                s_commission=s_commission+float(response3[0][3])
                print(s_commission, (response3[0][3]))
                values3=(str(s_commission),campaign_id,customer_id, )
            mycursor.execute(sql_qry3,values3)
            mydb.commit()
            print(mycursor.rowcount, "was inserted.4")

    except Exception as e: print("ERROR:",e)            

    
succ_log={"success_fee":[{"order_id":"", "amount":""}]}
ref_log={"my_referal_count":"","amount":""}
camp_history={
    "total_referal_count":"",
    "total_orders":"",
    "total_order_value":"",
    "total_commission_value":"",
    "total_referal_value":"",
    "order_distribution":"" #30,50,.... no of orders at each level
}


accural_log={
    "date":"",
    "referal_ids":"",   # [30,500,50]  Row ids of referal table from  which success and referral amount was  accured 
}
#calculate_referal_comission(111,'311103','2')
#calculate_success_comission('111','6272','None-imarket_mohammed_sahique123-test_sahil_2-Sandeep','311103','1,2,3')

if __name__ == '__main__':
   #app.run(host='192.168.14.75', port=5000)
   app.run(host='0.0.0.0', port=5000)
   


'''
SELECT campaign_id, path FROM medicube.campaign_referrals WHERE coupon_code=%s;
'''