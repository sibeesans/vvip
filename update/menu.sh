#!/bin/bash
# =========================================
BOT="https://raw.githubusercontent.com/fv-store/vvip/main/"
UPDATE="https://raw.githubusercontent.com/fv-store/vvip/main/update/update.sh"
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
GREEN='\033[0;32m'
RED='\033[0;31m'
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/dragon-andy/permission/main/ip"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/matamata233"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6282131861788"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear
ISP=$(curl -s ipinfo.io/org?token=7578ac19afd785 | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city?token=7578ac19afd785 )
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/Fv-store/ip/main/ip | grep $MYIP | awk '{print $2}')
if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/Fv-store/ip/main/ip | grep $MYIP | awk '{print $3}')
fi

# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2

# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // color
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
WHITE='\033[0;97m'
NC='\033[0m'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="autosc.me/aio"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther="FranataSTORE"

###########- END COLOR CODE -##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"

data_ip="https://kytvpn.xcodehoster.com/izin"
d2=$(date -d "$date_list" +"+%s")
d1=$(date -d "$Exp" +"+%s")
dayleft=$(( ($d1 - $d2) / 86400 ))

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
                echo -e "${EROR} Please Run This Script As Root User !"
                exit 1
fi


# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws-epro | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${GREEN}ON${NC}"
else
    status_ws="${RED}OFF${NC}"
fi

# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // SSH Websocket Proxy
xray=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi

clear
clear
function add-host(){
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}               • ADD VPS HOST •                ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
read -rp "  New Host Name : " -e host
echo ""
if [ -z $host ]; then
echo -e "  [INFO] Type Your Domain/sub domain"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/ssnvpn-pro/ipvps.conf
echo ""
echo "  [INFO] Dont forget to renew cert"
echo ""
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to Renew Cret"
crtxray
fi
}
clear
clear
echo -e "${YELLOW}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "                      << INFORMASI VPS >>                    \E[0m" | lolcat
echo -e "${YELLOW}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "  ${BLUE}• ${WHITE}Sever Uptime        ${GREEN}: $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "  ${BLUE}• ${WHITE}Current Time        ${GREEN}: $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "  ${BLUE}• ${WHITE}Operating System    ${GREEN}: $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g')( $(uname -m))"
echo -e "  ${BLUE}• ${WHITE}Domain VPS          ${GREEN}: $( cat /etc/xray/domain )"
echo -e "  ${BLUE}• ${WHITE}Server IP           ${GREEN}: ${ipsaya}"
echo -e "  ${BLUE}• ${WHITE}ISP-VPS             ${GREEN}: ${ISP}"
echo -e "  ${BLUE}• ${WHITE}City                ${GREEN}: ${CITY}"
echo -e "  ${BLUE}• ${WHITE}Ram                 ${GREEN}: ${uram}/${tram}GB"
echo -e "  ${BLUE}• ${WHITE}CPU USAGE           ${GREEN}: ${cpu_usage}"
echo -e "  ${BLUE}• ${WHITE}Clients Name        ${GREEN}: ${YELLOW}$Name ${NC}"
echo -e "  ${BLUE}• ${WHITE}Script Exfire       ${GREEN}: ${YELLOW}$Exp (${NC}${RED} $dayleft Days ${NC}${YELLOW})${NC}"
echo -e "  ${BLUE}• ${WHITE}Developer           ${GREEN}: FV STORE ${NC}"
echo -e "${YELLOW}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "                     << STATUS SERVICE >>                    \E[0m" | lolcat
echo -e "${YELLOW}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "      ${COLOR2}[ SSH Websocket${NC}: ${GREEN}ON ${NC}]  [ NGINX${NC}: ${status_nginx} ] [ XRAY${NC} : ${status_xray} ] "
echo -e "${YELLOW}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${YELLOW}│  \033[0m ${BOLD}${YELLOW}SSH     VMESS       VLESS      TROJAN       SHADOWSOCKS$NC  $COLOR1│"
echo -e "${YELLOW}│  \033[0m ${Blue} $ssh1        $vma           $vla          $tra               $ssa   $NC    $COLOR1│"
echo -e "${YELLOW}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "{$YELLOW}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "                     << MENU TUNNELING >>                    \E[0m" | lolcat
echo -e "${YELLOW}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "  ${CYAN}[${WHITE}01${CYAN}] • ${Blue} SSH    ${NC}          ${CYAN}[${WHITE}08${CYAN}] • ${Blue} BACKUP MENU  ${NC} "
echo -e "  ${CYAN}[${WHITE}02${CYAN}] • ${Blue} VMESS  ${NC}          ${CYAN}[${WHITE}09${CYAN}] • ${Blue} SETTING MENU ${NC} "
echo -e "  ${CYAN}[${WHITE}03${CYAN}] • ${Blue} VLESS  ${NC}          ${CYAN}[${WHITE}10${CYAN}] • ${Blue} INFORMATION  ${NC} "
echo -e "  ${CYAN}[${WHITE}04${CYAN}] • ${Blue} TROJAN ${NC}          ${CYAN}[${WHITE}11${CYAN}] • ${Blue} ADD DOMAIN   ${NC} "
echo -e "  ${CYAN}[${WHITE}05${CYAN}] • ${Blue} SSWS   ${NC}          ${CYAN}[${WHITE}12${CYAN}] • ${Blue} CERT XRAY    ${NC} "
echo -e "  ${CYAN}[${WHITE}06${CYAN}] • ${Blue} UPDATE ${NC}          ${CYAN}[${WHITE}13${CYAN}] • ${Blue} SET REBOOT   ${NC} "
echo -e "  ${CYAN}[${WHITE}07${CYAN}] • ${Blue} INSTALL UDP ${NC}     ${CYAN}[${WHITE}14${CYAN}] • ${Blue} INSTALL BOT     ${NC} "
echo -e "${YELLOW}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "${WHITE}"
echo -ne " Select menu : "; read opt
case $opt in
01 | 1) clear ; menu-ssh ;;
02 | 2) clear ; menu-vmess ;;
03 | 3) clear ; menu-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-ss ;;
06 | 6) clear ; wget ${UPDATE} && chmod +x update.sh && ./update.sh ;;
07 | 7) clear ; wget --load-cookies /tmp/cookies.txt ${UDPX} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp ;;
08 | 8) clear ; menu-backup ;;
09 | 9) clear ; menu-set ;;
10) clear ; info ;;
11) clear ; add-host ;;
12) clear ; crtxray ;;
13) clear ; auto-reboot ;;
14) clear ; wget ${BOT}kontol.sh && chmod +x kontol.sh && ./kontol.sh ;;
999) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
