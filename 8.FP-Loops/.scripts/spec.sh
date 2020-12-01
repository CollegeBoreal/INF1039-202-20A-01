#!/bin/sh

# --------------------------------------
# Spec (test) specific file
# Use this to customize the testing files
# code: Binary Search 
# --------------------------------------

generate_spec () {
   echo "import sys; sys.path.append('.') # Rajouter le repertoire courant" > .scripts/b${id}0000.py
   echo "import pytest" >> .scripts/b${id}0000.py
   echo " " >> .scripts/b${id}0000.py
   echo "@pytest.fixture" >> .scripts/b${id}0000.py
   echo "def bypass():" >> .scripts/b${id}0000.py
   echo "   from b${id} import add_sub" >> .scripts/b${id}0000.py
   echo "   return fonction_1() " >> .scripts/b${id}0000.py
   echo " " >> .scripts/b${id}0000.py
   echo "def test_answer(bypass):" >> .scripts/b${id}0000.py
   echo "   assert bypass == [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]" >> .scripts/b${id}0000.py
}

