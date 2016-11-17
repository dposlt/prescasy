import configparser

Config = configparser.ConfigParser()

Config.read('config.ini')

print(Config['database']['host'])
print(Config['database']['db'])
print(Config['database']['user'])
print(Config['database']['pass'])