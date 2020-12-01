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


```python
# -*- coding: utf-8 -*-
"""
Created on <changer la date>

@author: <changer l'auteur>
"""

def fonction_1():
   return [ x for x in range(0,21) if x % 2 == 0 ]
   
def main():
   print (fonction_1())
   
if __name__ == '__main__':
    main()
```

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
