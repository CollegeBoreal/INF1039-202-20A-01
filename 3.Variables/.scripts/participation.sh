#!/bin/sh

# --------------------------------------
#
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only

   
echo "# Participation au `date +"%d-%m-%Y %H:%M"`"
echo ""
echo "## Légende"
echo ""

echo "| Signe              | Signification                 |"
echo "|--------------------|-------------------------------|"
echo "| :heavy_check_mark: | Prêt à être corrigé           |"
echo "| :x:                | Projet inexistant             |"


echo ""
echo "## Résultat"
echo ""
echo "|:hash:| Boréal :id:                | Fait               | Éxécution |"
echo "|------|----------------------------|--------------------|-----------|"

i=0

for id in "${ETUDIANTS[@]}"
do
   U_AVATAR="<image src='https://avatars0.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image>"
   FILE=${id}.py
   if [ -f "$FILE" ]; then
       OK_FILE="[:heavy_check_mark:](../${FILE})"
   else
       OK_FILE="[:x:]"
   fi
   OK="| ${i} | [${id}](../${FILE}) - ${U_AVATAR} | ${OK_FILE} | [:construction:](.scripts/Correction.md#etudiant-${id}) | "
   echo ${OK}
   let "i++"
done
