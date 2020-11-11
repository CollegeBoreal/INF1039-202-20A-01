#!/bin/sh

# --------------------------------------
#
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only

source .scripts/spec.sh --source-only

echo "# Execution au `date +"%d-%m-%Y %H:%M"`"

for id in "${ETUDIANTS[@]}"
do

   echo "\n## Etudiant ${id} "
   echo "###  =[BEGIN]============== Exécution du script ${id} =============== "
   echo "\`\`\`"

   python b${id}.py


   echo "\`\`\`"
   echo "###  =[END]============== Exécution du script ${id} =============== "
   
   generate_spec 

done
