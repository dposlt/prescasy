from flask import Flask, render_template
import app.date_month as date_month

app = Flask(__name__)
app.debug = True

@app.route("/")
def index():
    month = date_month.date.ShowMonth()
    return render_template('base.tpl',month = month)
    

@app.route('/db')
def db():
    user = 'admin'
    return render_template('db.tpl',user=user)


@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.tpl'), 404
    
    
#if __name__ == "__main__":
#    app.run()
