#!/bin/bash
##usercheck
if [ $(grep "1000" /etc/passwd | cut -d: -f1 | awk '{print $1}') ]; then
	usermod -aG sudo $(grep "1000" /etc/passwd | cut -d: -f1 | awk '{print $1}')
        sudo usermod -s /bin/bash $(grep "1000" /etc/passwd | cut -d: -f1 | awk '{print $1}')
        sudo usermod -aG video $(grep "1000" /etc/passwd | cut -d: -f1 | awk '{print $1}')
        sudo usermod -aG docker $(grep "1000" /etc/passwd | cut -d: -f1 | awk '{print $1}')
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo ""
        echo " ✅ PASSED ! We found the user UID " $(grep "1000" /etc/passwd | cut -d: -f1 | awk '{print $1}')
        echo ""
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
else
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo " ⌛ INFO ! "
        echo " ⌛ INFO ! Lowercase Only, No Spaces"
        echo " ⌛ INFO ! Enter a password (8+ chars but not your name ffs)"
        echo " ⌛ INFO ! "
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo ""
        read -p "Enter username : " username
        read -s -p "Enter password : " password
        echo ""
        egrep "^$username" /etc/passwd >/dev/null
                pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
                useradd -m -p $pass $username
                usermod -aG sudo $username
                sudo usermod -s /bin/bash $username
                usermod -aG video $username
				usermod -aG docker $username
        echo ""
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo " ✅ PASSED ! User bitch ass has been added to system!"
        echo " ✅ PASSED ! Your Username : " $username
        echo " ✅ PASSED ! Your Password : " $password
        echo " ✅ PASSED ! "
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
fi
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
😂 What a cuck name: $(grep "1000" /etc/passwd | cut -d: -f1 | awk '{print $1}')
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
exit 0
