# 8.FP-Loops


Dans le répertoire `8.FP-Loops`, 

- [ ] créer votre répertoire avec votre :id: Boréal

:bulb: example d':id: `300098957`

```
$ mkdir 300098957
```

- [ ] Changer de répertoire

```
$ cd 300098957
```

- [ ] Ouvrir votre programme `Python` en lui donnant le nom b:id: et l'extension `.py`

```
$ nano b300098957.py
```

- [ ] Copier le programme ci-dessous

```python
# -*- coding: utf-8 -*-
"""
Created on <changer la date>

@author: <changer l'auteur>
"""

def fonction_1():   
   return 0
   
def main():
   print (fonction_1())
   
if __name__ == '__main__':
    main()
```

- [ ] Code de la Fonction appellée `fonction_1()`

Dans la leçon vu la semaine dernière sur la programmation fonctionnelle [F.FP](F.FP), trouver la relation suivante:

<img src="http://www.sciweavers.org/tex2img.php?eq=%20%20%5Cbig%5C%7Bx%20%7C%20x%20%20%5Cin%20%20%5Caleph%20%2C%20x%20%20%5Cleq%2020%20%2C%20x%20%20%5Cin%20pair%20%5Cbig%5C%7D%20&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0" align="center" border="0" alt="  \big\{x | x  \in  \aleph , x  \leq 20 , x  \in pair \big\} " width="215" height="21" /></img>

Dans une liste 


- [ ] Éxécuter le programme Python

```
$ python b300098957.py
```

- [ ] L'ajouter à `git`

```
$ git add ./
```

- [ ] Signer son code

```
$ git commit --message "Mon programme en python :snake:"
```

- [ ] L'envoyer sur `github.com`

```
$ git push
```

---

:bookmark: Solution

```python
   pairs = [ x for x in range(0,21) if x % 2 == 0 ] 
```

