from flask import Flask, request, render_template, redirect, session, url_for

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def echo():
    if request.method == 'POST' and 'msg' in request.form:
        data = request.form.get('msg')
        return render_template('echo.html',data=data)
    else:
        data = ''
        return render_template('echo.html',data=data)
    data = ''
    return render_template('echo.html')

if __name__ == '__main__':
 app.run(host="0.0.0.0", port=5000,debug=True)