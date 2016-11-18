from datetime import date as dateToday
import unittest

class date(unittest.TestCase):
    
    def GetMonth():
        
        today = dateToday.today()
        month = today.month
    
        return month
        
 
    def ShowMonth():
        index = date.GetMonth()
        months = ['leden','únor','březen','duben','květen','červen','červenec','srpen','září','říjen','listopad','prosinec']
        
        return months[index - 1].upper()




if __name__ == '__main__':
    date.ShowMonth() == 'LISTOPAD'
    unittest.main()
