from woocommerce import API
import json
import json
import mysql.connector

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
mycursor = mydb.cursor()


data = {
    "code": "OFFER100OFF",
    "discount_type": "percent",
    "amount": "10",
    "individual_use": True,
    "exclude_sale_items": True,
    "minimum_amount": "100.00"
}

#print(wcapi.post("coupons", data))





cus_data={
    "event":"register_user",
    "data":{"email":"test1@apcogsys.net","first_name":"test1","last_name":"HS","username":"imarket_test11_HS","billing":{"first_name":"sahique","last_name":"HS","company":"","address_1":"#22/1,5thcross,1stmain,1stblock","address_2":"byrasandra Jayanagar East","city":"Bangalore","state":"Karnataka","postcode":"560011","country":"India","email":"test1@apcogsys.net","phone":"0123456789"},"shipping":{"first_name":"sahique","last_name":"HS","company":"","address_1":"#22/1,5thcross,1stmain,1stblock","address_2":"byrasandra Jayanagar East","city":"Bangalore","state":"Karnataka","postcode":"560011","country":"India"}},
    "data2":{"email":"","first_name":"123_test","last_name":"","username":"9876543211","billing":{"first_name":"123_test","last_name":"","company":"","address_1":"","address_2":"","city":"","state":"","postcode":"","country":"","email":"","phone":"9876543211"},"shipping":{"first_name":"123_test","last_name":"","company":"","address_1":"","address_2":"","city":"","state":"","postcode":"","country":""}},
    "status":"enable",
    "userID":0
}
#print(wcapi.post("customers", cus_data['data']).json())
print(wcapi.post("customers", cus_data['data2']).json())

'''

#print(wcapi.get("products", params={"per_page": 20}).json())


#odr_list= wcapi.get("orders").json()
params={'after': "2022-01-01T00:00:00.854Z"}
odr_list= wcapi.get("orders", params={'per_page': 10, 'page': 1,'after':'2022-04-07T00:00:00.854Z'}).json()
print(odr_list)
for x in odr_list:
   
    try:
        print(x['id'],"-",x['customer_id'])
        sql_qry= "INSERT INTO medicube.orders_list (customer_id, order_id, order_value, product_id, order_date_time, coupon_code) VALUES (%s,%s,%s,%s,%s,%s) " 
        if (len(x['line_items'])>0):
            product_id=x['line_items'][(len(x['line_items']))-1]['id']
            order_value=x['line_items'][(len(x['line_items']))-1]['total']
        else:
            product_id=""
            order_value=""
        if (len(x['coupon_lines'])>0):
            coupon_id=x['coupon_lines'][(len(x['coupon_lines']))-1]['id']
        else:
            coupon_id=""
            
        values=(x['customer_id'],x['id'],order_value,product_id,x['date_created'],coupon_id,)
        mycursor.execute(sql_qry,values)
        mydb.commit()
        print(mycursor.rowcount, "was inserted.")
    except:
            print("order id already present")


#odr_list= wcapi.get("orders").json()
params={'after': "2022-01-01T00:00:00.854Z"}
odr_list= wcapi.get("products").json()
print(odr_list)
for x in odr_list:
   
    try:
        print(x['id'],"-",x['customer_id'])
        sql_qry= "INSERT INTO medicube.product_list (product_id, product_name, product_price,product_link, product_discription) VALUES (%s,%s,%s,%s,%s) " 
            
        values=(x['id'],x['name'],x['price'],x['permalink'],x['description'],)
        mycursor.execute(sql_qry,values)
        mydb.commit()
        print(mycursor.rowcount, "was inserted.")
    except:
            print("product id already present")
'''