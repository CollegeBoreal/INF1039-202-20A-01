# -*- coding: utf-8 -*-
"""
Created on <12:20:00>

@author: <sylvain emmanuel >
"""

def fonction_1():
   s = [ x for x in range(0,21) if x % 2 == 0 ]
   return s
   
def main():
   print (fonction_1())
   
if __name__ == '__main__':
    main()
