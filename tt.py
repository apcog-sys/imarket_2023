import mysql.connector

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
val= {'id': 115, 'date_created': '2021-12-31T17:45:27', 'date_created_gmt': '2021-12-31T12:15:27', 'date_modified': '2023-03-13T15:23:53', 'date_modified_gmt': '2023-03-13T09:53:53', 'email': 'qwertyasdf@gmail.com', 'first_name': 'qwerty01', 'last_name': 'asdpoi', 'role': 'customer', 'username': 'imarket_qwerty_asdfg', 'billing': {'first_name': 'qwerty012', 'last_name': 'asdpoi', 'company': '', 'address_1': '', 'address_2': '', 'city': 'Bangalore', 'postcode': '560011', 'country': 'India', 'state': 'Karnataka', 'email': 'qwertyasdf@gmail.com', 'phone': ''}, 'shipping': {'first_name': 'qwerty012', 'last_name': 'asdpoi', 'company': '', 'address_1': '', 'address_2': '', 'city': 'Bangalore', 'postcode': '560011', 'country': 'India', 'state': 'Karnataka', 'phone': ''}, 'is_paying_customer': False, 'avatar_url': 'http://1.gravatar.com/avatar/70b92f7d31ecc60e42c74623ec1380ab?s=96&d=mm&r=g', 'meta_data': [{'id': 4197, 'key': 'mailchimp_woocommerce_is_subscribed', 'value': '0'}, {'id': 4198, 'key': '_yoast_wpseo_profile_updated', 'value': '1640952927'}], '_links': {'self': [{'href': 'https://medicube.in/wp-json/wc/v3/customers/115'}], 'collection': [{'href': 'https://medicube.in/wp-json/wc/v3/customers'}]}}
print()
y={'status':'enable','password':'pass@123'}
sql = "UPDATE medicube.customer_reg SET first_name =%s, last_name =%s, user_name=%s, email=%s, phone=%s, address1=%s, address2=%s, city=%s, state=%s, postcode=%s, country=%s, status=%s, password=%s WHERE id = %s"
values=( val['first_name'], val['last_name'], val['username'], val['email'], val['billing']['phone'], 
    val['billing']['address_1'], val['billing']['address_2'], val['billing']['city'], val['billing']['state'], 
        val['billing']['postcode'], val['billing']['country'], y['status'],y['password'],val['id'],)
#print(val['first_name'],val['id'])
#sql = "UPDATE medicube.customer_reg SET first_name = %s WHERE id = %s"
#sql = "UPDATE medicube.customer_reg SET (first_name = %s WHERE id = %s"
#values=( val['first_name'],int(val['id']),)
#values=( "asdfgvzcx","115")
mycursor.execute(sql,values)
#mydb.commit()


print(mycursor.rowcount, "was inserted.")
if(mycursor.rowcount == 1):
    #print(mycursor.rowcount, "was inserted.")
    response="Customer data updated"
else:
    print("not updated")

a= "2023-03-19" 
b = "2023-03-18"

if (a>b):
    print("greater")
else:
    print("smaller")
'''
mycursor.execute("SELECT * FROM medicube.customer_reg")

myresult = mycursor.fetchall()
print(myresult)
'''
