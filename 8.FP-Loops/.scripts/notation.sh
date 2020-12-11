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

i=0

for id in "${ETUDIANTS[@]}"
do
   U_AVATAR="<image src='https://avatars0.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image>"
   FILE=${id}/b${id}.py
   OK="| ${i} | [${id}](../${FILE}) - ${U_AVATAR} | [:tada:](Execution.md#etudiant-${id}) | "
   KO="| ${i} | [${id}](../${FILE}) - ${U_AVATAR} | [:x:](Execution.md#etudiant-${id}) | "
   if [ -f "$FILE" ]; then
      cd ${id}
      pytest ../.scripts/b${id}0000.py 2>&1 >  /dev/null
      RES=`echo $?`
      if [ $RES = 0 ]; then
          echo ${OK}
      else
          echo ${KO}
      fi
      cd ..
   else
       echo ${KO}
   fi
   let "i++"
done

