from flask import Flask,render_template, request,session,redirect
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from werkzeug.utils import secure_filename
from datetime import datetime
import json
import os
import math
# from flask_mail import Mail
import pymysql
pymysql.install_as_MySQLdb()



with open('config.json','r') as c:
    params = json.load(c)["params"]
    
local_server = True    
app = Flask(__name__)
app.secret_key = 'super-secrect-key'
app.config['UPLOAD_FOLDER'] = r"D:\code\flask_pro\uploads"

  #app.config.update(
   # MAIL_SERVER = "smtp.gmail.com",
    #MAIL_PORT = "465",
    #MAIL_USE_SSL = True,
    #MAIL_USERNAME = params['gmail_user'],
    #MAIL_PASSWORD = params['gamil_pass']
    
    #) # can send mail

#mail = Mail(app)


if(local_server):
    
    app.config["SQLALCHEMY_DATABASE_URI"] = params['local_uri']

else:
    app.config["SQLALCHEMY_DATABASE_URI"] = params['prod_uri']

db = SQLAlchemy(app)
migrate = Migrate(app, db)
migrate = Migrate(app, db)

@app.route('/')
@app.route('/sign', methods=['GET', 'POST'])
def sign():
    if 'user' in session and session['user'] == params['admin_user']:
        posts = Posts.query.all()
        return render_template('index.html',params=params, posts=posts)

    if request.method == 'POST':
        username = request.form.get("uname")
        userpass = request.form.get("pass")

        if username == params["admin_user"] and userpass == params["admin_pass"]:
            session['user'] = username
            posts = Posts.query.all()
            return render_template('index.html',params=params, posts = posts)

    return render_template('sign.html', params=params)


@app.route('/logout')
def logout():
    session.pop('user')
    return redirect('/sign')

@app.route('/index')
def index():
    
    
    posts = Posts.query.filter_by().all()#[0:params['number_of_posts']]        # takes on;y first 2 post
    last = math.ceil(len(posts)/int(params["number_of_posts"]))
    #pagination logic
    page =  request.args.get('page')
    
    if(not str(page).isnumeric()):
        page = 1
    page = int(page)    
    posts = posts[(page-1)*int(params["number_of_posts"]) : (page-1)*int(params["number_of_posts"]) + int(params["number_of_posts"])]
    #first page => prev = NULL, Next=page+1
    if page == 1:
        prev = "#"
        next = f"/index?page={page + 1}"

    # Last page => prev = page-1, Next = NULL
    elif page == last:
        next = "#"
        prev = f"/index?page={page - 1}"

    # Middle pages => prev = page-1, Next = page + 1
    else:
        prev = f"/index?page={page - 1}"
        next = f"/index?page={page + 1}"
        
    
    
    return render_template('index.html', params= params, posts=posts, prev=prev, next=next)



@app.route('/uploader', methods=['GET', 'POST'])
def uploader():
    if 'user' in session and session['user'] == params['admin_user']:
        if(request.method == 'POST'):
            f = request.files['file1']
            f.save(os.path.join(app.config['UPLOAD_FOLDER'],secure_filename(f.filename)))
            return "Uploaded Successfully"



@app.route('/dashboad')
def dashboad():
    if 'user' in session and session['user'] == params['admin_user']:
        posts = Posts.query.all()
        return render_template('dashboad.html',params=params, posts=posts)

    if request.method == 'POST':
        username = request.form.get("uname")
        userpass = request.form.get("pass")

        if username == params["admin_user"] and userpass == params["admin_pass"]:
            session['user'] = username
            posts = Posts.query.all()
            return render_template('dashboad.html',params=params, posts = posts)

    return render_template('sign.html', params=params)


@app.route('/edit/<string:slno>', methods=['GET', 'POST'])
def edit(slno):
    if 'user' in session and session['user'] == params['admin_user']:
        if request.method == "POST":
            # Get the form data
            box_title = request.form.get('title')
            tagline = request.form.get('tagline')
            name = request.form.get('name')
            slug = request.form.get('slug')
            content = request.form.get('content')
            img_file = request.form.get('img_file')
            date = datetime.now()

            if slno == '0':
                # Create a new post
                post = Posts(title=box_title, slug=slug, content=content, img_file=img_file, tagline=tagline, date=date,name = name)
                db.session.add(post)
                db.session.commit()
            
            else:
                post = Posts.query.filter_by(slno=slno).first()
                post.title = box_title
                post.slug = slug
                post.name = name
                post.content = content
                post.tagline = tagline
                post.img_file = img_file
                post.date = date
                db.session.commit()
                return redirect('/edit/'+slno)
    post = Posts.query.filter_by(slno=slno).first()       
    return render_template('edit.html', params=params,post=post)

   


@app.route('/delete/<string:slno>', methods=['GET', 'POST'])
def delete(slno):
    if 'user' in session and session['user'] == params['admin_user']:
        post = Posts.query.filter_by(slno = slno).first()
        db.session.delete(post)
        db.session.commit()
    
    return redirect('/dashboad')


            
            




@app.route('/about')
def about():
    
    return render_template('about.html', params = params)


class Contacts(db.Model):
    '''
    slno, name, email,phone_num,mes,date 
    '''
    slno = db.Column(db.Integer,primary_key = True)
    name = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(80),unique = True, nullable=False)
    phone_num = db.Column(db.String(80),unique = True, nullable=False)
    mes = db.Column(db.String(120),unique = True)
    date= db.Column(db.String(80),unique = True, nullable = True)




@app.route('/contact', methods = ['GET', 'POST'])
def contact():
    
    if(request.method == 'POST'):
        
        '''Add entry to data'''        
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')
        
        '''
    slno, name, email,phone_num,mes,date 
    '''
        entry = Contacts(name = name, phone_num = phone, email = email, mes = message, date = datetime.now())
        
        db.session.add(entry)
        db.session.commit()
        
        
 #       mail.send_message("New Messege from" + name, 
  #                        sender = email, 
   #                       recipients = [params['gmail_user']],
    #                      body = message + "\n" + phone
     #                     )
    
    
    
    
    
    return render_template('contact.html', params= params)


class Posts(db.Model):
    slno = db.Column(db.Integer,primary_key = True)
    title = db.Column(db.String(80), nullable=False)
    name = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(80), nullable=False)
    content = db.Column(db.String(200), nullable=False)
    tagline = db.Column(db.String(200), nullable=False)
    date= db.Column(db.String(80), nullable = True)
    img_file= db.Column(db.String(80), nullable = True)
    __tablename__ = 'posts'
    
@app.route('/post/<string:post_slug>', methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()
    
    if not post:
        return f"Post with slug '{post_slug}' not found", 404  # Return more descriptive error
    
    return render_template('post.html', params=params, post = post)


app.run(debug=False,host='0.0.0.0')
