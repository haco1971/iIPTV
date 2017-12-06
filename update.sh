clear
echo "Welcome to iIPTV Panel Basic v1.2.1 Update Script"
echo "More Information on www.iIPTVPanel.com"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
read -p "Please enter a password for your MySQL root user:" mysqlpassword

echo "[+] Importing Files"
wget -q http://download.iiptvpanel.com/UPDATE/v1.2.1/iIPTV-UPDATE-v1.2.1.zip > /dev/null 2>&1
unzip -o iIPTV-UPDATE-v1.2.1.zip -d /var/www/ > /dev/null 2>&1
rm -f iIPTV-UPDATE-v1.2.1.zip > /dev/null 2>&1

echo "[+] Importing SQL Files"
wget -q http://download.iiptvpanel.com/UPDATE/v1.2.1/iIPTV-UPDATEv1.2.1.sql > /dev/null 2>&1
mysql -uroot -p$mysqlpassword iIPTV < iIPTV-UPDATEv1.2.1.sql > /dev/null 2>&1
rm -f iIPTV-UPDATEv1.2.1.sql > /dev/null 2>&1

echo "[+] iIPTVPanel v1.2.1 Update Finished"
echo "[+] Changelog:"
echo "[Fix] Client Connection Limit Bugfix"
echo "[Fix] Stream Limit raised to 1000 Stream"
echo "[Added] Stream Importer added"
echo "[Added] French Language added (Big thanks to user 2in1 for translating)"
