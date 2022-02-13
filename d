cd /root
read -e -p " Masukan Domain :$domain" domain
clear
echo "Done"
echo "DOMAIN         : $domain
echo -e "===============================" | lolcat
MYIP=$domain;
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/fsidvpn/perizinan/main/ipvps.txt | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Facebook : https://m.facebook.com/edoy.caquarius"
echo -e "${NC}${LIGHT}WhatsApp : 088228877739"
echo -e "${NC}${LIGHT}Telegram : https://t.me/FER1DEV"
exit 0
