#!/bin/sh

APPNAME='tuapegoseguro'
APPHOST='xa.bi'
APPUSER='chikoon'

echo "# Begin TuApegoSeguro deployment"
echo

echo "# Push ${APPNAME}.main to github"
echo "> git co main"
git checkout main
echo "> git push origin main"
git push origin main

echo "# Push ${APPNAME}.main to production"
echo "> git push ${APPUSER}@${APPHOST}:~/code/${APPNAME} main"
git push ${APPUSER}@${APPHOST}:~/code/${APPNAME} main

# echo "> git push ${APPUSER}@${APPHOST}:~/code/${APPNAME} +main:new-main"
# git push ${APPUSER}@${APPHOST}:~/${APPNAME} +main:new-main

# echo "> git push ${APPUSER}@${APPHOST}:~/${APPNAME}.pro.git +main:new-main"
# git push ${APPUSER}@${APPHOST}:~/${APPNAME}.pro.git +main:new-main
# echo

# echo "# Done! Now, go to production as saart-test and unpack it -------------------"
# echo "> [saart-test@cnp:~]$ updatedev; updatepre; updatepro"
