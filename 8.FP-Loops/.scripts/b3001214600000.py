import sys; sys.path.append('.') # Rajouter le repertoire courant
import pytest
 
@pytest.fixture
def bypass():
   from b300121460 import add_sub
   return add_sub(3,4) 
 
def test_answer(bypass):
   assert bypass == (7,-1)
