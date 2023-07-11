# Python3 code to demonstrate
# to get random number from list
# using random.choice()
import random
from woocommerce import API
import json
import json
import mysql.connector


mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root"
)
mycursor = mydb.cursor()

def create_seeds(list_id,camp_id,down_counter,generator):
    print(camp_id,down_counter,generator)
    for x in list_id:
        print(x)


# initializing list
test_list = [1, 4, 5, 2, 7]
f=[]
# printing original list
print ("Original list is : " + str(test_list))

# using random.choice() to
# get a random number
for i in range (0,2,1):
    random_num = random.choice(test_list)
    f.append(random_num)

# printing random number
print ("Random selected number is : " + str(random_num))
print(f)

sql="SELECT id FROM medicube.customer_reg;" 
mycursor.execute(sql)
result=mycursor.fetchall()
print(result)
id_list=[]
f=[]
for y in result:
    id_list.append(y[0])
print(id_list)
for i in range (0,5,1):
    random_num = random.choice(id_list)
    id_list.remove(random_num)
    f.append(random_num)
    print(id_list)
print(f)
create_seeds(f,'123456','10','system')
