class working:

    def wDirectory():
        import os
        working= os.environ.get("WORKING_DIRECTORY","../")
        return working