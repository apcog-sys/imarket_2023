# importing the requests library
import requests
from woocommerce import API
import json
import mysql.connector
import requests
from datetime import datetime
import random

wcapi = API(
    url='http://medicube.in',
    consumer_key='ck_7e68f56b11c6d6969d64d61014b5a0fd2fa6b121',
    consumer_secret='cs_2e1ff9374dfa2cbbe116dd387b2cfb95aeff8735',
    wpAPI= True,
    version= 'wc/v3'
)


mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root"
)

try:
    mycursor = mydb.cursor()
    print("DB connected")
except:
    print("DB not connected")


def create_seeds(list_id,camp_id,down_counter,generator):
    if(generator=='system'):
        for x in list_id:
            sql_qry= "INSERT INTO medicube.campaign_referrals (campaign_id, seed_id, referral_level, refered_by, refered_to, status, referral_id, coupon_code, down_counter) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s) " 
            values=(camp_id,random.randint(1,999999),'0','0',x[2],'open',random.randint(1,999999),"",down_counter,)
            mycursor.execute(sql_qry,values)
            mydb.commit()
            print(mycursor.rowcount, "was inserted.")

# api-endpoint
URL = "http://127.0.0.1:5000/sync_orders"
# sending get request and saving the response as response object
r = requests.get(url = URL)

# extracting data in json format
data = r
print(data.json())



api_url = "http://127.0.0.1:5000/sync_campaigns"
response = requests.get(api_url)
#print(response.json())
y = response.json()
print(">>",y)

for x in y:
    print("----------")
    print(x[0],x[2])
    
    # (id, campaign_name, start_date, stop_date, max_referral_level, no_of_seeds, product_id, status, product_name, product_link, product_description, enable_disable, enable/disable)
    # (100905, campaign_18/4/2022, 2022-04-19T15:59, 2022-04-30T15:59, 5, 2, 4774, pending, , , , , )
    print(x[2])
    start_date=x[2].split('T')
    stop_date=x[3].split('T')
    today=datetime.today().strftime('%Y-%m-%d')
    print(start_date[0] ,today)
    if(start_date[0]== today):
        print("ooooooooooooooooookkkkkkkkkkkkkkkkkkkkkkkkkkkk")
        sql="UPDATE medicube.campaign_list SET status = 'open' WHERE id= %s;" 
        values=( x[0],)
              
        mycursor.execute(sql,values)
        mydb.commit()
        print(mycursor.rowcount, "was updated.")
        
        # Generating seeds
        campaign_id=x[0]    # campaign id
        down_counter=x[4]   # max_referral_level
        seeds= x[5]         # no of seeds in 5th 
        
        id_list=[];
        final_id=[]
        user_name_list=[]
        sql="SELECT id,user_name,phone FROM medicube.customer_reg;" 
        mycursor.execute(sql)
        result=mycursor.fetchall()
        print(result)
        for y in result:
            id_list.append(y)
        if (len(id_list)<=int(seeds)):
            final_id=id_list
        else:
            for i in range (0,int(seeds),1):
                random_num = random.choice(id_list)
                id_list.remove(random_num)
                final_id.append(random_num)
                print(id_list)
            print("final:::",final_id)
            create_seeds(final_id,campaign_id,down_counter,'system')
    elif(stop_date[0]== today):
        print("calculate all the refral value for all the participants in the campaign")
        sql="UPDATE medicube.campaign_list SET status = 'closed' WHERE id= %s;" 
        values=( x[0],)
              
        mycursor.execute(sql,values)
        mydb.commit()
        print(mycursor.rowcount, "was updated.")

    else:
        print("leave")


'''


api_url = "http://127.0.0.1:5000/account_update"
response = requests.get(api_url)
#print(response.json())
y = response.json()
print(">>",y)
'''



'''

/* eventstarter:
    for each event which is in pending mode, check start date
    if start date==today, 
        change status to start_date
        for given number of seeds,         create unique customer_list
        for each unqie seed, create referral table entry with level 0 and insert downcountr=maxlevels
    if sto_date=today,
        change status to ended
        */
'''

'''
api_url = "http://127.0.0.1:5000/update_order"
response = requests.get(api_url)
response.json()
'''

