#ID 300122014
#dans la lecon du  livre  
minutes_to_convert = 123
hours_decimal = minutes_to_convert/60
hours_part = int (hours_decimal)

minutes_decimal = hours_decimal-hours_part
minutes_part = round (minutes_decimal*60)

print ("hours")
print ("hours_part")
print ("minutes")
print ("minutes_part")

#mon programme 

#mot de bienvenue

s="bienvenue dans mon programme de conversion"
print(s)
#recuperation du nombre de minute
a=float(input("entrer le nombre de minute à convertir"))
#calcul de lheure
b=a/60
#affichage de lheure partie entiere
heure=int( b )
#calcul des minutes
c=b-heure
#afficher les minutes en arrondi
minute=round(c*60)
#ecrire le resultat a l'utilisateur
x="heure(s)"
y="mminute(s)"
print("votre nombre dheure est de " ,heure,x ,minute,y )
