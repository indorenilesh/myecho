from flask import Flask, request, render_template, redirect, session, url_for
import os
from dotenv import load_dotenv

#Load property file
dotenv_path = 'application.properties'  
load_dotenv(dotenv_path)

app = Flask(__name__)
#app.config.from_envvar('MYECHO_CONFIG')

@app.route('/', methods=['GET', 'POST'])
def echo():
    if request.method == 'POST' and 'msg' in request.form:
        data = request.form.get('msg')
        return render_template('echo.html',data=data,appenv=os.environ.get("FLASK_ENV"))
    else:
        data = ''
        return render_template('echo.html',data=data,appenv=os.environ.get("FLASK_ENV"))
    data = ''
    return render_template('echo.html')

if __name__ == '__main__':
 app.run(host="0.0.0.0", port=5000,debug=True)
