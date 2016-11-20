import configparser, working


class parser:

    def configdb():
        Config = configparser.ConfigParser()
        path = working.working.wDirectory()
        Config.read(path + 'config.ini')
        return Config

    def host():
        host = parser.configdb()
        host = host['database']['host']
        return host
    
    def db():
        db = parser.configdb()
        db = db['database']['db']
        return db
    
    def user():
        user = parser.configdb()
        user = user['database']['user']
        return user
    
    def userPass():
        userpass = parser.configdb()
        userpass = userpass['database']['pass']
        return userpass

