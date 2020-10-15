#ID 300122014
#mot de bienvenue
s="bienvenue dans mon programme de conversion"
print(s)
#recuperation du nombre de minute
a=float(input("entrer le nombre de minute"))
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
