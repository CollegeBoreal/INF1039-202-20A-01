#!/bin/sh

# --------------------------------------
#
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only

source .scripts/spec.sh --source-only

echo "# Execution au `date +"%d-%m-%Y %H:%M"`"

i=0

for id in "${ETUDIANTS[@]}"
do

   U_AVATAR="<image src='https://avatars0.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image>"
   echo ""
   echo "## Etudiant ${id} "
   echo "###  =[BEGIN - ${U_AVATAR} ]============== Exécution du script ${id} =============== "
   echo "\`\`\`"

   python ${id}/b${id}.py


   echo "\`\`\`"
   echo "###  =[END - ${U_AVATAR} ]================ Exécution du script ${id} =============== "
   let "i++"
   
   generate_spec 

done
