from conf import config as configFile

host = configFile.parser.host()
db = configFile.parser.db()
user = configFile.parser.user()
dbpass = configFile.parser.userPass()

def connect():
    pass

print(host)

