#!/bin/bash
# SFILE AUTO DOWNLOADER WITH BASH SHELL
# MY FACEBOOK  : fb.me/mwidhis
# MY INSTAGRAM : instagram.com/widhisec
clear
GREEN=$(tput setaf 2) #HIJAU
WHITE=$(tput setaf 7) #PUTIH
CYAN=$(tput setaf 6)
RED=$(tput setaf 1) #MERAH
NORMAL=$(tput sgr0)
if [[ -z $(command -v curl) ]]; then
	printf "[ CURL BELOM DI INSTALL ]\n"
	exit
fi
if [[ -z $(command -v grep) ]]; then
	printf "[ GREP BELOM DINSTALL ]\n"
	exit
fi
if [[ -z $(command -v wget) ]]; then
    printf "[ WGET BELOM DIINSTALL ]\n"
    exit
fi
BENER(){
echo -e "
        ${GREEN}[c0ded By : Widhisec]
${CYAN}
             _____.__                       .___.__   
  _______/ ____\  |   ____             __| _/|  |  
 /  ___/\   __\|  | _/ __ \   ______  / __ | |  |  
 \___ \  |  |  |  |_\  ___/  /_____/ / /_/ | |  |__
/____  > |__|  |____/\___  >         \____ | |____/
     \/                  \/               \/  ${RED}
[----------------------------------------------------]
"
}
BENER
GEETS(){
	     ree=$(curl --silent "$uye" \
         -H 'authority: sfile.mobi' \
         -H 'upgrade-insecure-requests: 1' \
         -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' \
         -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
         -H 'cookie: __cfduid=d5497593414f1924207fda1e60f8a22731561979180; PHPSESSID=h3il1bq6t2e4gt0c65n1ibhal0; _ga=GA1.2.2143484616.1561979183; _gid=GA1.2.1512850013.1561979183' --compressed | grep 'id="download"' | grep -Po 'href="\K.*?(?=")')
         echo -e "$ree" >> link.txt
         fia=$(wget --header="User-Agent: Mozilla/5.0 Gecko/2010 Firefox/5" `cat link.txt` -O $tipe \
          --header="Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" \
          --header="Accept-Language: en-us,en;q=0.5" \
          --header="Accept-Encoding: gzip, deflate" \
          --header="Accept-language: id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7"\
          --header="cookie: __cfduid=d5497593414f1924207fda1e60f8a22731561979180; PHPSESSID=h3il1bq6t2e4gt0c65n1ibhal0; _ga=GA1.2.2143484616.1561979183; _gid=GA1.2.1512850013.1561979183" \
          --referer="$uye")
         fiaz=$(curl --silent "$uye" --compressed \
         -H 'authority: sfile.mobi' \
         -H 'upgrade-insecure-requests: 1' \
         -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' \
         -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
         -H "referer: $uye" \
         -H 'cookie: __cfduid=d5497593414f1924207fda1e60f8a22731561979180; PHPSESSID=h3il1bq6t2e4gt0c65n1ibhal0; _ga=GA1.2.2143484616.1561979183; _gid=GA1.2.1512850013.1561979183' | grep 'rel="nofollow">'| grep download | cut -d\' -f3 | grep -oP '>(.*?)<')
         echo -e "${fiaz}"
}
echo -en "${WHITE}[${RED}*]${WHITE} ${WHITE}masukkan urlnya : "; read uye
echo -en "${WHITE}[${RED}*]${WHITE} ${WHITE}file bertipe : "; read tipe
echo "TUNGGU BENTAR.."
GEETS "$uye"
rm -rf link.txt