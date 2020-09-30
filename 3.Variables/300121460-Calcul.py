# -*- coding: utf-8 -*-
"""
Created on Wed Sep 23 12:47:26 2020

@author: user
"""
from math import sqrt
a=float(input("Entrer la valeur de a:"))
print(a)
b=float(input("Entrer la valeur de b:"))
print(b)
c=float(input("Entrer la valeur de c:"))
print(c)
delta=float(b**2-4*a*c)
print("La valeur du calcul de delta est:", delta)
if (delta<0):
    
    print("Pas de solution")
elif (delta==0):
    print("Il y a une seule solution:", -b/(2*a))
else:
    racine=sqrt(delta)
    print("\nLa racine de delta est:", racine)
    print("\nIl y a deux racines:", (-b-racine)/(2*a), (-b+racine)/(2*a))