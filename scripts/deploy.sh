#!/bin/sh

APPNAME='tuapegoseguro'
APPHOST='xa.bi'
APPUSER='chikoon'
APPHOME='~/code/tuapegoseguro'

echo "# Begin TuApegoSeguro deployment"
echo

echo "# Push ${APPNAME}.main to github"
echo "> git co main"
git checkout main
echo "> git push origin main"
git push origin main

echo "# Push ${APPNAME}.main to production"
echo "> git push -f ${APPUSER}@${APPHOST}:~/code/${APPNAME} +main:new-main"
git push -f ${APPUSER}@${APPHOST}:~/code/${APPNAME} +main:new-main

# echo "> git push ${APPUSER}@${APPHOST}:~/code/${APPNAME} +main:new-main"
# git push ${APPUSER}@${APPHOST}:~/${APPNAME} +main:new-main

# echo "> git push ${APPUSER}@${APPHOST}:~/${APPNAME}.pro.git +main:new-main"
# git push ${APPUSER}@${APPHOST}:~/${APPNAME}.pro.git +main:new-main
# echo

echo "# Done! Now, go to production as ${APPUSER} and unpack it -------------------"
echo "> cd ${APPHOME}; git co main; git merge new-main"
