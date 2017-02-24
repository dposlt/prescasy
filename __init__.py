from os import environ
from flask import Flask, render_template
from app import main


environ['NLS_LANG'] = '.UTF-8'

    
if __name__ == "__main__":
    main.app.run()
