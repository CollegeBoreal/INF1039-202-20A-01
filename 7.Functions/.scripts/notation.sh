#!/bin/sh

# --------------------------------------
# Grader
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only

echo ""
echo "## Légende"
echo ""

echo "| Signe              | Signification                 |"
echo "|--------------------|-------------------------------|"
echo "| :tada:             | S'est bien éxécuté            |"
echo "| :x:                | A un problème dans le code    |"


echo ""
echo "## :b: Précision"
echo ""
echo "|:hash:| Boréal :id:                |  Notation         |"
echo "|------|----------------------------|-------------------|"

i=1

for id in "${ETUDIANTS[@]}"
do
   FILE=b${id}.py
   OK="| ${i} | [${id}](../${FILE}) | [:tada:](Execution.md#etudiant-${id}) | "
   KO="| ${i} | [${id}](../${FILE}) | [:x:](Execution.md#etudiant-${id}) | "
   if [ -f "$FILE" ]; then
      pytest .scripts/b${id}0000.py 2>&1 >  /dev/null
      RES=`echo $?`
      if [ $RES = 0 ]; then
          echo ${OK}
      else
          echo ${KO}
      fi
   else
       echo ${KO}
   fi
   let "i++"
done

