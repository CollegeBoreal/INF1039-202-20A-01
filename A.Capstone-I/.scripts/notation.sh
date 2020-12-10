#!/bin/sh

# --------------------------------------
#
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only

echo "# Corrections au `date +"%d-%m-%Y %H:%M"`"
echo ""

i=0

for id in "${ETUDIANTS[@]}"
do
   U_AVATAR="<image src='https://avatars0.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image>"
   echo "## Etudiant ${id} "
   echo "###  =[BEGIN - ${U_AVATAR} ]============== Exécution du script ${id} =============== "
   echo "\`\`\`"

   echo 120 | python3 ${id}.py


   echo "\`\`\`"

   echo "###  =[END - ${U_AVATAR} ]=============== Exécution du script ${id} =============== "
   let "i++"

done
