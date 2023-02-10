from flask import Flask, render_template,  request, send_file,redirect,url_for
from flask_mysqldb import MySQL
import re
import os
app = Flask(__name__,template_folder='./templates')
# Required
app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "chatanalyzer"
mysql = MySQL(app)
@app.route('/')
def home():
    return render_template('home.html')
@app.route('/back')
def back():
    return render_template('home.html')



# Extract the Date time
def date_time(s):
    pattern='^([0-9]+)(\/)([0-9]+)(\/)([0-9]+), ([0-9]+):([0-9]+)[ ]?(AM|PM|am|pm)? -'
    result=re.match(pattern, s)
    if result:
        return True
    return False 

# Extract contacts
def find_contact(s):
    s=s.split(":")
    if len(s)==2:
        return True
    else:
        return False
    
# Extract Message
def getMassage(line):
    splitline=line.split(' - ')
    datetime= splitline[0]
    date, time= datetime.split(', ')
    message=" ".join(splitline[1:])
    
    if find_contact(message):
        splitmessage=message.split(": ")
        author=splitmessage[0]
        message=splitmessage[1]
    else:
        author=None
    return date, time, author, message
#comparizen      
@app.route('/upload_file', methods = ['POST'])
def upload_file():
 file= request.files['file_name']
 file .readline().decode('utf-8')
 sum_nor=0
 sum_offi=0
 nor=0
 offi=0
 avg_offi=0
 avg_nor=0
 date, time, author= None, None, None
 while True:
        line=file.readline().decode('utf-8')
        if not line:
            break
        if date_time(line):

            print("hello")
            date, time, author, message=getMassage(line)
            print("auther",author)
            word=message.split()
            print(word)
            cur = mysql.connection.cursor()
            cur.execute("SELECT * FROM data")
            data=cur.fetchall()
            cur.close()
            for words in word:
                for row in data:
                 if words==row[1]:
                    print(words)
                    if row[3]=="normal":
                        nor=nor+1
                        sum_nor=sum_nor+row[2]
                        print (sum_nor)
                        print (nor)
                    if row[3]=="official":
                        offi=offi+1
                        sum_offi=sum_offi+row[2]
                        print (sum_offi)
                        print (offi)
            print (date,author,message)
        else:
            return  render_template('validate.html',x='Plz select the whatsapp exported text file')

 # comparing

 if offi==0 and nor==0:
    result="Chat is not official & not normal"
    print (result)
 elif nor>offi:
    avg_nor=sum_nor/nor
    result="Chat is normal. Its weightage is" ,round(avg_nor, 2)
    print (result)
 elif offi>nor:
    avg_offi=sum_offi/offi
    result="Chat is official. Its weightage is" ,round(avg_offi, 2)
    print (result)
 else:
   avg_offi=sum_offi/offi
   avg_nor=sum_nor/nor
   result="chat is normal & official. Waightage for official is :",round(avg_offi, 2),"& Waightage for normal is :", round(avg_nor, 2)
   print(result)
   
 return  render_template('output.html',x=result)


if __name__ == "__main__":
    app.run(debug=True, port=80)