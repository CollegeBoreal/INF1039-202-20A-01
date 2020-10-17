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


echo "\n## Résultat\n"
echo "|:hash:| Boréal :id:                | :100:              |"
echo "|------|----------------------------|--------------------|"

i=1


for id in "${ETUDIANTS[@]}"
do
   FILE=${id}.py
   OK="| ${i} | [${id}](../${FILE}) | [:heavy_check_mark:](Correction.md#etudiant-${id}) | "
   KO="| ${i} | [${id}](../${FILE}) | [:x:](Correction.md#etudiant-${id})                | "
   if [ -f "$FILE" ]; then
       echo ${OK}
   else
       echo ${KO}
   fi
   let "i++"
done
