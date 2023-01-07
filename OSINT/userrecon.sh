#!/bin/bash
# UserRecon v1.0
# Author: @linux_choice
# https://github.com/thelinuxchoice/userrecon
# Give me the credits if you use any part of this code, read the License.

trap 'printf "\n";partial;exit 1' 2

banner() {

printf "                                                   \e[1;92m.-\"\"\"\"-. \e[0m\n"
printf "                                                  \e[1;92m/        \ \e[0m\n"
printf "\e[1;77m  _   _               ____                       \e[0m\e[1;92m/_        _\ \e[0m\n"
printf "\e[1;77m | | | |___  ___ _ __|  _ \ ___  ___ ___  _ __  \e[0m\e[1;92m// \      / \\ \e[0m\n"
printf "\e[1;77m | | | / __|/ _ \ '__| |_) / _ \/ __/ _ \| '_ \ \e[0m\e[1;92m|\__\    /__/| \e[0m\n"
printf "\e[1;77m | |_| \__ \  __/ |  |  _ <  __/ (_| (_) | | | | \e[0m\e[1;92m\    ||    / \e[0m\n"
printf "\e[1;77m  \___/|___/\___|_|  |_| \_\___|\___\___/|_| |_|  \e[0m\e[1;92m\        / \e[0m\n"
printf "                   \e[1;92mv1.0, Author: @linux_choice  \e[0m   \e[1;92m\  __  / \e[0m\n"
printf "                  \e[1;93m Edited By:\e[0m \e[1;31m@parthenoun      \e[0m     \e[1;92m'.__.' \e[0m\n"

}


partial() {

if [[ -e $username.txt ]]; then
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m %s.txt\n" $username
fi


}

scanner() {

read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Input Username:\e[0m ' username

if [[ -e $username.txt ]]; then
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Removing previous file:\e[0m\e[1;77m %s.txt" $username
rm -rf $username.txt
fi
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Checking username\e[0m\e[1;77m %s\e[0m\e[1;92m on: \e[0m\n" $username

printf "\n\e[1;34m\e[1;34m[\e[0m \e[1;93mWEBSITE RECON\e[0m\e[1;34m ]\e[0m\n"
printf "[ WEBSITE RECON ]" $username > $username.txt

##Website Domain net
check_websitenet=$(curl -s -H "Accept-Language: en" "http://$username.net" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website net : \e[0m"

if [[ $check_websitenet == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitenet == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.net\n" $username
printf "http://%s.net\n" $username > $username.txt
fi

##Website Domain org
check_websiteorg=$(curl -s -H "Accept-Language: en" "http://$username.org" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website org : \e[0m"

if [[ $check_websiteorg == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteorg == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.org\n" $username
printf "http://%s.org\n" $username > $username.txt
fi


##Website Domain io
check_websiteio=$(curl -s -H "Accept-Language: en" "http://$username.io" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website io : \e[0m"

if [[ $check_websiteio == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteio == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.io\n" $username
printf "http://%s.io\n" $username > $username.txt
fi


##Website Domain co
check_websiteco=$(curl -s -H "Accept-Language: en" "http://$username.co" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website co : \e[0m"

if [[ $check_websiteco == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteco == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.co\n" $username
printf "http://%s.co\n" $username > $username.txt
fi


##Website Domain us
check_websiteus=$(curl -s -H "Accept-Language: en" "http://$username.us" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website us : \e[0m"

if [[ $check_websiteus == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteus == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.us\n" $username
printf "http://%s.us\n" $username > $username.txt
fi


##Website Domain cc
check_websitecc=$(curl -s -H "Accept-Language: en" "http://$username.cc" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website cc : \e[0m"

if [[ $check_websitecc == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitecc == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.cc\n" $username
printf "http://%s.cc\n" $username > $username.txt
fi


##Website Domain me
check_websiteme=$(curl -s -H "Accept-Language: en" "http://$username.me" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website me : \e[0m"

if [[ $check_websiteme == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteme == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.me\n" $username
printf "http://%s.me\n" $username > $username.txt
fi


##Website Domain biz
check_websitebiz=$(curl -s -H "Accept-Language: en" "http://$username.biz" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website biz : \e[0m"

if [[ $check_websitebiz == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitebiz == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.biz\n" $username
printf "http://%s.biz\n" $username > $username.txt
fi


##Website Domain 0blog
check_website0blog=$(curl -s -H "Accept-Language: en" "http://$username.0blog" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website 0blog : \e[0m"

if [[ $check_website0blog == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_website0blog == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.0blog\n" $username
printf "http://%s.0blog\n" $username > $username.txt
fi


##Website Domain inc
check_websiteinc=$(curl -s -H "Accept-Language: en" "http://$username.inc" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website inc : \e[0m"

if [[ $check_websiteinc == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteinc == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.inc\n" $username
printf "http://%s.inc\n" $username > $username.txt
fi


##Website Domain info
check_websiteinfo=$(curl -s -H "Accept-Language: en" "http://$username.info" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website info : \e[0m"

if [[ $check_websiteinfo == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteinfo == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.info\n" $username
printf "http://%s.info\n" $username > $username.txt
fi


##Website Domain de
check_websitede=$(curl -s -H "Accept-Language: en" "http://$username.de" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website de : \e[0m"

if [[ $check_websitede == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitede == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.de\n" $username
printf "http://%s.de\n" $username > $username.txt
fi


##Website Domain at
check_websiteat=$(curl -s -H "Accept-Language: en" "http://$username.at" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website at : \e[0m"

if [[ $check_websiteat == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteat == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.at\n" $username
printf "http://%s.at\n" $username > $username.txt
fi


##Website Domain eu
check_websiteeu=$(curl -s -H "Accept-Language: en" "http://$username.eu" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website eu : \e[0m"

if [[ $check_websiteeu == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteeu == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.eu\n" $username
printf "http://%s.eu\n" $username > $username.txt
fi


##Website Domain ru
check_websiteru=$(curl -s -H "Accept-Language: en" "http://$username.ru" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website ru : \e[0m"

if [[ $check_websiteru == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteru == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.ru\n" $username
printf "http://%s.ru\n" $username > $username.txt
fi


##Website Domain jp
check_websitejp=$(curl -s -H "Accept-Language: en" "http://$username.jp" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website jp : \e[0m"

if [[ $check_websitejp == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitejp == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.jp\n" $username
printf "http://%s.jp\n" $username > $username.txt
fi


##Website Domain mobi
check_websitemobi=$(curl -s -H "Accept-Language: en" "http://$username.mobi" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website mobi : \e[0m"

if [[ $check_websitemobi == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitemobi == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.mobi\n" $username
printf "http://%s.mobi\n" $username > $username.txt
fi


##Website Domain in
check_websitein=$(curl -s -H "Accept-Language: en" "http://$username.in" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website in : \e[0m"

if [[ $check_websitein == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitein == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.in\n" $username
printf "http://%s.in\n" $username > $username.txt
fi


##Website Domain xyz
check_websitexyz=$(curl -s -H "Accept-Language: en" "http://$username.xyz" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website xyz : \e[0m"

if [[ $check_websitexyz == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitexyz == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.xyz\n" $username
printf "http://%s.xyz\n" $username > $username.txt
fi


##Website Domain uk
check_websiteuk=$(curl -s -H "Accept-Language: en" "http://$username.uk" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website uk : \e[0m"

if [[ $check_websiteuk == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteuk == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.uk\n" $username
printf "http://%s.uk\n" $username > $username.txt
fi


##Website Domain ca
check_websiteca=$(curl -s -H "Accept-Language: en" "http://$username.ca" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website ca : \e[0m"

if [[ $check_websiteca == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteca == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.ca\n" $username
printf "http://%s.ca\n" $username > $username.txt
fi


##Website Domain com
check_websitecom=$(curl -s -H "Accept-Language: en" "http://$username.com" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website com : \e[0m"

if [[ $check_websitecom == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitecom == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.com\n" $username
printf "http://%s.com\n" $username > $username.txt
fi


##Website Domain tk
check_websitetk=$(curl -s -H "Accept-Language: en" "http://$username.tk" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website tk : \e[0m"

if [[ $check_websitetk == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitetk == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.tk\n" $username
printf "http://%s.tk\n" $username > $username.txt
fi


##Website Domain cf
check_websitecf=$(curl -s -H "Accept-Language: en" "http://$username.cf" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website cf : \e[0m"

if [[ $check_websitecf == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitecf == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.cf\n" $username
printf "http://%s.cf\n" $username > $username.txt
fi


##Website Domain ml
check_websiteml=$(curl -s -H "Accept-Language: en" "http://$username.ml" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website ml : \e[0m"

if [[ $check_websiteml == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteml == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.ml\n" $username
printf "http://%s.ml\n" $username > $username.txt
fi


##Website Domain tv
check_websitetv=$(curl -s -H "Accept-Language: en" "http://$username.tv" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website tv : \e[0m"

if [[ $check_websitetv == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitetv == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.tv\n" $username
printf "http://%s.tv\n" $username > $username.txt
fi


##Website Domain cat
check_websitecat=$(curl -s -H "Accept-Language: en" "http://$username.cat" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website cat : \e[0m"

if [[ $check_websitecat == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitecat == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.cat\n" $username
printf "http://%s.cat\n" $username > $username.txt
fi


##Website Domain es
check_websitees=$(curl -s -H "Accept-Language: en" "http://$username.es" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website es : \e[0m"

if [[ $check_websitees == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitees == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.es\n" $username
printf "http://%s.es\n" $username > $username.txt
fi


##Website Domain it
check_websiteit=$(curl -s -H "Accept-Language: en" "http://$username.it" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website it : \e[0m"

if [[ $check_websiteit == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteit == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.it\n" $username
printf "http://%s.it\n" $username > $username.txt
fi


##Website Domain os
check_websiteos=$(curl -s -H "Accept-Language: en" "http://$username.os" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website os : \e[0m"

if [[ $check_websiteos == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websiteos == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.os\n" $username
printf "http://%s.os\n" $username > $username.txt
fi


##Website Domain fr
check_websitefr=$(curl -s -H "Accept-Language: en" "http://$username.fr" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website fr : \e[0m"

if [[ $check_websitefr == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitefr == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.fr\n" $username
printf "http://%s.fr\n" $username > $username.txt
fi


##Website Domain de
check_websitede=$(curl -s -H "Accept-Language: en" "http://$username.de" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website de : \e[0m"

if [[ $check_websitede == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitede == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.de\n" $username
printf "http://%s.de\n" $username > $username.txt
fi


##Website Domain pt
check_websitept=$(curl -s -H "Accept-Language: en" "http://$username.pt" -L | grep -o '</html>'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Website pt : \e[0m"

if [[ $check_websitept == *'1'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check_websitept == *'0'* ]]; then
printf "\e[1;92m Found!\e[0m http://%s.pt\n" $username
printf "http://%s.pt\n" $username > $username.txt
fi

printf "\n\e[1;34m\e[1;34m[\e[0m \e[1;93mWEBSITE RECON\e[0m\e[1;34m ]\e[0m\n"
printf "[ SOCIAL MEDIA RECON ]" > $username.txt
## INSTAGRAM

check_insta=$(curl -s -H "Accept-Language: en" "https://www.instagram.com/$username" -L | grep -o 'The link you followed may be broken'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instagram: \e[0m"

if [[ $check_insta == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.instagram.com/%s\n" $username
printf "https://www.instagram.com/%s\n" $username > $username.txt
elif [[ $check_insta == *'0'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
fi

## INSTAGRAM PRIVATE

check_instapriv=$(curl -s -H "Accept-Language: en" "https://www.instagram.com/$username" -L | grep -o 'is_private":true'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instagram Private: \e[0m"

if [[ $check_instapriv == *'1'* ]]; then
printf "\e[1;92m It's Public! \e[0m\n"
printf "https://www.instagram.com/%s Is Public\n" $username > $username.txt
elif [[ $check_instapriv == *'0'* ]]; then
printf "\e[1;31mIt's Private!\e[0m\n"
fi

## Pornhub
check_pornhub=$(curl -s -H "Accept-Language: en" "https://www.pornhub.com/users/$username" -L | grep -o 'Error Page Not Found'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] PornHub: \e[0m"
if [[ $check_pornhub == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.pornhub.com/users/%s\n" $username
printf "https://www.pornhub.com/users/%s\n" $username > $username.txt
elif [[ $check_pornhub == *'0'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
fi

## TINDER

check_tinder=$(curl -s -H "Accept-Language: en" "https://www.tinder.com/@$username" -L | grep -o 'Tinder | Dating, Make Friends &amp; Meet New People'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Tinder: \e[0m"

if [[ $check_tinder == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.tinder.com/@%s\n" $username
printf "https://www.tinder.com/@%s\n" $username > $username.txt
elif [[ $check_tinder == *'0'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
fi

## Facebook

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Facebook: \e[0m"
check_face=$(curl -s -H "Accept-Language: en" "http://www.facebook.com/$username" -L | grep -o 'You must log in to continue.'; echo $?)


if [[ $check_face == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.facebook.com/%s\n" $username
printf "https://www.facebook.com/%s\n" $username >> $username.txt
elif [[ $check_face == *'0'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
fi

## TWITTER 

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Twitter: \e[0m"
check_twitter=$(curl -s "https://www.twitter.com/$username" -L -H "Accept-Language: en" | grep -o 'page doesn’t exist'; echo $?)


if [[ $check_twitter == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.twitter.com/%s\n" $username
printf "https://www.twitter.com/%s\n" $username >> $username.txt
elif [[ $check_twitter == *'0'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
fi

## YOUTUBE

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] YouTube: \e[0m"
check_youtube=$(curl -s "https://www.youtube.com/$username" -L -H "Accept-Language: en" | grep -o 'Not Found'; echo $?)


if [[ $check_youtube == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.youtube.com/%s\n" $username
printf "https://www.youtube.com/%s\n" $username >> $username.txt
elif [[ $check_youtube == *'0'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
fi

## BLOGGER

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Blogger: \e[0m"
check=$(curl -s "https://$username.blogspot.com" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404'; echo $?)


if [[ $check == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://%s.blogspot.com\n" $username
printf "https://%s.blogspot.com\n" $username >> $username.txt
elif [[ $check == *'0'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
fi

## GLOOGLE PLUS

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] GooglePlus: \e[0m"
check=$(curl -s "https://plus.google.com/+$username/posts" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404' ; echo $?)


if [[ $check == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://plus.google.com/+%s/posts\n" $username
printf "https://plus.google.com/+%s/posts\n" $username >> $username
elif [[ $check == *'0'* ]]; then
printf "\e[1;31mNot Found!\e[0m\n"
fi

## REDDIT

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Reddit: \e[0m"
check1=$(curl -s -i "https://www.reddit.com/user/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | head -n1 | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.reddit.com/user/%s\n" $username
printf "https://www.reddit.com/user/%s\n" $username >> $username.txt
fi

## WORDPRESS

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Wordpress: \e[0m"
check1=$(curl -s -i "https://$username.wordpress.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'Do you want to register' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.wordpress.com\n" $username
printf "https://%s.wordpress.com\n" $username >> $username.txt
fi

## PINTEREST

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Pinterest: \e[0m"
check1=$(curl -s -i "https://www.pinterest.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '?show_error' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.pinterest.com/%s\n" $username
printf "https://www.pinterest.com/%s\n" $username >> $username.txt
fi

## GITHUB

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Github: \e[0m"
check1=$(curl -s -i "https://www.github.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.github.com/%s\n" $username
printf "https://www.github.com/%s\n" $username >> $username.txt
fi

## TUMBLR

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Tumblr: \e[0m"
check1=$(curl -s -i "https://$username.tumblr.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.tumblr.com\n" $username
printf "https://%s.tumblr.com\n" $username >> $username.txt
fi

## FLICKR

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Flickr: \e[0m"
check1=$(curl -s -i "https://www.flickr.com/people/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.flickr.com/photos/%s\n" $username
printf "https://www.flickr.com/photos/%s\n" $username >> $username.txt
fi

## STEAM

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Steam: \e[0m"
check1=$(curl -s -i "https://steamcommunity.com/id/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'The specified profile could not be found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://steamcommunity.com/id/%s\n" $username
printf "https://steamcommunity.com/id/%s\n" $username >> $username.txt
fi

## VIMEO

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Vimeo: \e[0m"
check1=$(curl -s -i "https://vimeo.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://vimeo.com/%s\n" $username
printf "https://vimeo.com/%s\n" $username >> $username.txt
fi


## SoundCloud

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] SoundCloud: \e[0m"
check1=$(curl -s -i "https://soundcloud.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found'; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://soundcloud.com/%s\n" $username
printf "https://soundcloud.com/%s\n" $username >> $username.txt
fi

## DISQUS

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Disqus: \e[0m"
check1=$(curl -s -i "https://disqus.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 NOT FOUND' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://disqus.com/%s\n" $username
printf "https://disqus.com/%s\n" $username >> $username.txt
fi

## MEDIUM

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Medium: \e[0m"
check1=$(curl -s -i "https://medium.com/@$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://medium.com/@%s\n" $username
printf "https://medium.com/@%s\n" $username >> $username.txt
fi

## DEVIANTART

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] DeviantART: \e[0m"
check1=$(curl -s -i "https://$username.deviantart.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.deviantart.com\n" $username
printf "https://%s.deviantart.com\n" $username >> $username.txt
fi

## VK

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] VK: \e[0m"
check1=$(curl -s -i "https://vk.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://vk.com/%s\n" $username
printf "https://vk.com/%s\n" $username >> $username.txt
fi

## About.me

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] About.me: \e[0m"
check1=$(curl -s -i "https://about.me/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://about.me/%s\n" $username
printf "https://about.me/%s\n" $username >> $username.txt
fi


## Imgur

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Imgur: \e[0m"
check1=$(curl -s -i "https://imgur.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://imgur.com/user/%s\n" $username
printf "https://imgur.com/user/%s\n" $username >> $username.txt
fi

## FlipBoard

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Flipboard: \e[0m"
check1=$(curl -s -i "https://flipboard.com/@$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://flipboard.com/@%s\n" $username
printf "https://flipboard.com/@%s\n" $username >> $username.txt
fi

## SlideShare

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] SlideShare: \e[0m"
check1=$(curl -s -i "https://slideshare.net/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://slideshare.net/%s\n" $username
printf "https://slideshare.net/%s\n" $username >> $username.txt
fi

## Fotolog

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Fotolog: \e[0m"
check1=$(curl -s -i "https://fotolog.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://fotolog.com/%s\n" $username
printf "https://fotolog.com/%s\n" $username >> $username.txt
fi


## Spotify

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Spotify: \e[0m"
check1=$(curl -s -i "https://open.spotify.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://open.spotify.com/user/%s\n" $username
printf "https://open.spotify.com/user/%s\n" $username >> $username.txt
fi

## MixCloud

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] MixCloud: \e[0m"
check1=$(curl -s -i "https://www.mixcloud.com/$username" -H "Accept-Language: en" -L | grep -o 'error-message' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.mixcloud.com/%s\n" $username
printf "https://www.mixcloud.com/%s\n" $username >> $username.txt
fi

## Scribd

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Scribd: \e[0m"
check1=$(curl -s -i "https://www.scribd.com/$username" -H "Accept-Language: en" -L | grep -o 'show_404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.scribd.com/%s\n" $username
printf "https://www.scribd.com/%s\n" $username >> $username.txt
fi

## Badoo

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Badoo: \e[0m"
check1=$(curl -s -i "https://www.badoo.com/en/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.badoo.com/en/%s\n" $username
printf "https://www.badoo.com/en/%s\n" $username >> $username.txt
fi

# Patreon

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Patreon: \e[0m"
check1=$(curl -s -i "https://www.patreon.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.patreon.com/%s\n" $username
printf "https://www.patreon.com/%s\n" $username >> $username.txt
fi

## BitBucket

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] BitBucket: \e[0m"
check1=$(curl -s -i "https://bitbucket.org/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://bitbucket.org/%s\n" $username
printf "https://bitbucket.org/%s\n" $username >> $username.txt
fi

## DailyMotion

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] DailyMotion: \e[0m"
check1=$(curl -s -i "https://www.dailymotion.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.dailymotion.com/%s\n" $username
printf "https://www.dailymotion.com/%s\n" $username >> $username.txt
fi

## Etsy

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Etsy: \e[0m"
check1=$(curl -s -i "https://www.etsy.com/shop/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.etsy.com/shop/%s\n" $username
printf "https://www.etsy.com/shop/%s\n" $username >> $username.txt
fi

## CashMe

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] CashMe: \e[0m"
check1=$(curl -s -i "https://cash.me/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found'; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://cash.me/%s\n" $username
printf "https://cash.me/%s\n" $username >> $username.txt
fi

## Behance

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Behance: \e[0m"
check1=$(curl -s -i "https://www.behance.net/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found'; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.behance.net/%s\n" $username
printf "https://www.behance.net/%s\n" $username >> $username.txt
fi

## GoodReads

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] GoodReads: \e[0m"
check1=$(curl -s -i "https://www.goodreads.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.goodreads.com/%s\n" $username
printf "https://www.goodreads.com/%s\n" $username >> $username.txt
fi

## Instructables

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instructables: \e[0m"
check1=$(curl -s -i "https://www.instructables.com/member/$username" -H "Accept-Language: en" -L | grep -o '404 NOT FOUND' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.instructables.com/member/%s\n" $username
printf "https://www.instructables.com/member/%s\n" $username >> $username.txt
fi

## KeyBase

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Keybase: \e[0m"
check1=$(curl -s -i "https://keybase.io/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://keybase.io/%s\n" $username
printf "https://keybase.io/%s\n" $username >> $username.txt
fi

## Kongregate

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Kongregate: \e[0m"
check1=$(curl -s -i "https://kongregate.com/accounts/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://kongregate.com/accounts/%s\n" $username
printf "https://kongregate.com/accounts/%s\n" $username >> $username.txt
fi

## Livejournal

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] LiveJournal: \e[0m"
check1=$(curl -s -i "https://$username.livejournal.com" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.livejournal.com\n" $username
printf "https://%s.livejournal.com\n" $username >> $username.txt
fi

## AngelList

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] AngelList: \e[0m"
check1=$(curl -s -i "https://angel.co/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://angel.co/%s\n" $username
printf "https://angel.co/%s\n" $username >> $username.txt
fi

## Last.fm

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] last.fm: \e[0m"
check1=$(curl -s -i "https://last.fm/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://last.fm/user/%s\n" $username
printf "https://last.fm/user/%s\n" $username >> $username.txt
fi

## Dribbble

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Dribbble: \e[0m"
check1=$(curl -s -i "https://dribbble.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://dribbble.com/%s\n" $username
printf "https://dribbble.com/%s\n" $username >> $username.txt
fi

## Codecademy

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Codecademy: \e[0m"
check1=$(curl -s -i "https://www.codecademy.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.codecademy.com/%s\n" $username
printf "https://www.codecademy.com/%s\n" $username >> $username.txt
fi

## Gravatar

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Gravatar: \e[0m"
check1=$(curl -s -i "https://en.gravatar.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://en.gravatar.com/%s\n" $username
printf "https://en.gravatar.com/%s\n" $username >> $username.txt
fi

## Pastebin

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Pastebin: \e[0m"
check1=$(curl -s -i "https://pastebin.com/u/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'location: /index' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://pastebin.com/u/%s\n" $username
printf "https://pastebin.com/u/%s\n" $username >> $username.txt
fi

## Foursquare

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Foursquare: \e[0m"
check1=$(curl -s -i "https://foursquare.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://foursquare.com/%s\n" $username
printf "https://foursquare.com/%s\n" $username >> $username.txt
fi

## Roblox

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Roblox: \e[0m"
check1=$(curl -s -i "https://www.roblox.com/user.aspx?username=$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://foursquare.com/%s\n" $username
printf "https://foursquare.com/%s\n" $username >> $username.txt
fi

## Gumroad

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Gumroad: \e[0m"
check1=$(curl -s -i "https://www.gumroad.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.gumroad.com/%s\n" $username
printf "https://www.gumroad.com/%s\n" $username >> $username.txt
fi

## Newgrounds

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Newgrounds: \e[0m"
check1=$(curl -s -i "https://$username.newgrounds.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404 ' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.newgrounds.com\n" $username
printf "https://%s.newgrounds.com\n" $username >> $username.txt
fi

## Wattpad

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Wattpad: \e[0m"
check1=$(curl -s -i "https://www.wattpad.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404 ' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.wattpad.com/user/%s\n" $username
printf "https://www.wattpad.com/user/%s\n" $username >> $username.txt
fi

## Canva

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Canva: \e[0m"
check1=$(curl -s -i "https://www.canva.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404 ' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.canva.com/%s\n" $username
printf "https://www.canva.com/%s\n" $username >> $username.txt
fi

## CreativeMarket

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] CreativeMarket: \e[0m"
check1=$(curl -s -i "https://creativemarket.com/$username" -H "Accept-Language: en" -L | grep -o '404eef72' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://creativemarket.com/%s\n" $username
printf "https://creativemarket.com/%s\n" $username >> $username.txt
fi

## Trakt

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Trakt: \e[0m"
check1=$(curl -s -i "https://www.trakt.tv/users/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404 ' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.trakt.tv/users/%s\n" $username
printf "https://www.trakt.tv/users/%s\n" $username >> $username.txt
fi

## 500px

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] 500px: \e[0m"
check1=$(curl -s -i "https://500px.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://500px.com/%s\n" $username
printf "https://500px.com/%s\n" $username >> $username.txt
fi

## Buzzfeed

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Buzzfeed: \e[0m"
check1=$(curl -s -i "https://buzzfeed.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://buzzfeed.com/%s\n" $username
printf "https://buzzfeed.com/%s\n" $username >> $username.txt
fi

## TripAdvisor

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] TripAdvisor: \e[0m"
check1=$(curl -s -i "https://tripadvisor.com/members/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://tripadvisor.com/members/%s\n" $username
printf "https://tripadvisor.com/members/%s\n" $username >> $username.txt
fi

## HubPages

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] HubPages: \e[0m"
check1=$(curl -s -i "https://$username.hubpages.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.hubpages.com/\n" $username
printf "https://%s.hubpages.com/\n" $username >> $username.txt
fi

## Contently

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Contently: \e[0m"
check1=$(curl -s -i "https://$username.contently.com" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.contently.com\n" $username
printf "https://%s.contently.com\n" $username >> $username.txt
fi

## Houzz

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Houzz: \e[0m"
check1=$(curl -s -i "https://houzz.com/user/$username" -H "Accept-Language: en" -L | grep -o 'an error has occurred' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://houzz.com/user/%s\n" $username
printf "https://houzz.com/user/%s\n" $username >> $username.txt
fi

## blip.fm

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] blip.fm: \e[0m"
check1=$(curl -s -i "https://blip.fm/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://blip.fm/%s\n" $username
printf "https://blip.fm/%s\n" $username >> $username.txt
fi

## Wikipedia

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Wikipedia: \e[0m"
check1=$(curl -s -i "https://www.wikipedia.org/wiki/User:$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.wikipedia.org/wiki/User:%s\n" $username
printf "https://www.wikipedia.org/wiki/User:%s\n" $username >> $username.txt
fi

## HackerNews

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] HackerNews: \e[0m"
check1=$(curl -s -i "https://news.ycombinator.com/user?id=$username" -H "Accept-Language: en" -L | grep -o 'No such user' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://news.ycombinator.com/user?id=%s\n" $username
printf "https://news.ycombinator.com/user?id=%s\n" $username >> $username.txt
fi

## CodeMentor

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] CodeMentor: \e[0m"
check1=$(curl -s -i "https://www.codementor.io/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.codementor.io/%s\n" $username
printf "https://www.codementor.io/%s\n" $username >> $username.txt
fi

## ReverbNation

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] ReverbNation: \e[0m"
check1=$(curl -s -i "https://www.reverbnation.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.reverbnation.com/%s\n" $username
printf "https://www.reverbnation.com/%s\n" $username >> $username.txt
fi

## Designspiration 65

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Designspiration: \e[0m"
check1=$(curl -s -i "https://www.designspiration.net/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.designspiration.net/%s\n" $username
printf "https://www.designspiration.net/%s\n" $username >> $username.txt
fi

## Bandcamp

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Bandcamp: \e[0m"
check1=$(curl -s -i "https://www.bandcamp.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.bandcamp.com/%s\n" $username
printf "https://www.bandcamp.com/%s\n" $username >> $username.txt
fi


## ColourLovers

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] ColourLovers: \e[0m"
check1=$(curl -s -i "https://www.colourlovers.com/love/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.colourlovers.com/love/%s\n" $username
printf "https://www.colourlovers.com/love/%s\n" $username >> $username.txt
fi


## IFTTT

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] IFTTT: \e[0m"
check1=$(curl -s -i "https://www.ifttt.com/p/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.ifttt.com/p/%s\n" $username
printf "https://www.ifttt.com/p/%s\n" $username >> $username.txt
fi

## Ebay

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Ebay: \e[0m"
check1=$(curl -s -i "https://www.ebay.com/usr/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found\|eBay Profile - error' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.ebay.com/usr/%s\n" $username
printf "https://www.ebay.com/usr/%s\n" $username >> $username.txt
fi

## Slack

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Slack: \e[0m"
check1=$(curl -s -i "https://$username.slack.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.slack.com\n" $username
printf "https://%s.slack.com\n" $username >> $username.txt
fi

## OkCupid

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] OkCupid: \e[0m"
check1=$(curl -s -i "https://www.okcupid.com/profile/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.okcupid.com/profile/%s\n" $username
printf "https://www.okcupid.com/profile/%s\n" $username >> $username.txt
fi

## Trip

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Trip: \e[0m"
check1=$(curl -s -i "https://www.trip.skyscanner.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found\|HTTP/2 410' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.trip.skyscanner.com/user/%s\n" $username
printf "https://www.trip.skyscanner.com/user/%s\n" $username >> $username.txt
fi

## Ello

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Ello: \e[0m"
check1=$(curl -s -i "https://ello.co/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://ello.co/%s\n" $username
printf "https://ello.co/%s\n" $username >> $username.txt
fi

## Tracky

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Tracky: \e[0m"
check1=$(curl -s -i "https://tracky.com/user/$username" -H "Accept-Language: en" -L | grep -o 'profile:username' ; echo $?)

if [[ $check1 == *'1'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'0'* ]]; then 

printf "\e[1;92m Found!\e[0m https://tracky.com/~%s\n" $username
printf "https://tracky.com/~%s\n" $username >> $username.txt
fi

## Tripit

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Tripit: \e[0m"
check1=$(curl -s -i "https://www.tripit.com/people/$username#/profile/basic-info" -H "Accept-Language: en" -L | grep -o 'location: https://www.tripit.com/home' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.tripit.com/people/%s#/profile/basic-info\n" $username
printf "https://www.tripit.com/people/%s#/profile/basic-info\n" $username >> $username.txt
fi

## Basecamp

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Basecamp: \e[0m"
check1=$(curl -s -i "https://$username.basecamphq.com/login" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;31mNot Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.basecamphq.com/login\n" $username
printf "https://%s.basecamphq.com/login\n" $username >> $username.txt

fi
partial
}
banner
scanner