import sys; sys.path.append('.') # Rajouter le repertoire courant
import pytest
 
@pytest.fixture
def bypass():
   from b300117811 import fonction_1
   return fonction_1() 
 
def test_answer(bypass):
   assert bypass == [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
