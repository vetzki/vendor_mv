#!/system/bin/sh

# Erstellt swapfile falls es nicht existiert
# von vetzki

# Default Größe
SwapFile=65536  # bei dd bs 1024x64=65536 /x384= 393216 / 512= 524288 / 768= 786432 / 1024= 1048576

# Ort
FileOrt="/data/local/swapfile"

SwapGr()
{
echo "Aktuelle Groesse ist: $SwapFile"
echo "Groesse min: 65536 max: 2097152 "
echo "(z.b.: 1024 *384: 393216 / *512: 524288)"
echo "Neue Groesse= "
read "SwapFile"
	if [ $SwapFile -lt 65536 ]
	then echo "Swapfile zu klein, Standartwert wird gewählt (384 mb)" 
	SwapFile=393216
	elif [ $SwapFile -gt 2097152 ]
	then echo "Swapfile zu gross, Standartwert wird gewählt (384 mb)"
	SwapFile=393216
    elif [ $SwapFile =  ]
	then echo "Swapfile = ?, Standartwert wird gewählt (384 mb)"
	SwapFile=393216
	fi
echo "Swapfile-size ist nun: $SwapFile"
}

MakeFile()
{
echo "Swapfile wird erstellt in $FileOrt"
echo "mit der Groesse $(( $SwapFile/1024 )) mb"
dd if=/dev/zero of=$FileOrt bs=1024 count=$SwapFile
mkswap $FileOrt
chmod 600 $FileOrt
}

SwapAn()
{
if [ ! -e $FileOrt ]
then MakeFile
fi
swapon $FileOrt
}

InitD()
{
if [ -e /system/etc/init.d ]
then 
	mount -wo remount /system
	echo "/system/bin/sh" > /system/etc/init.d/99swapon
	echo >> /system/etc/init.d/99swapon
	echo "swapon $FileOrt" >> /system/etc/init.d/99swapon
	chmod 755 /system/etc/init.d/99swapon
	mount -ro remount /system
else
	echo "Kein init.d Ordner vorhanden, bitte pruefen"
fi
}

RemoveInitD()
{
mount -wo remount /system
rm /system/etc/init.d/99swapon
mount -ro remount /system
echo "/system/etc/init.d/99swapon entfernt"
}

Text()
{
echo
if [ `free | grep Swap | awk '{print $2}'` != 0 ]
	then echo "Swap >>>> AN. Swapfile-size: $(( `free | grep Swap | awk '{print $2}'`/1024 ))mb" 
else echo "Swap >>>> AUS"
fi
cat <<TEXT

(1)  Swapon
(2)  Swapoff
(3)  Swapfile neu erstellen: Groesse anpassen
(4)  Nur Swapfile erstellen/Neu erstellen
(5)  Swapfile loeschen
(6)  Init.d Datei erstellen
(7)  Init.d Datei entfernen


Swapfile Pfad kann ggf. im Script geaendert werden, Zeile 10 (bei #Ort)

(q) EXIT

TEXT
echo "Auswahl: "
read "AntwortAuswahl"
}

Auswahl()
{
Text;
case $AntwortAuswahl in
1) SwapAn;;
2) swapoff $FileOrt ;;
3) SwapGr;;
4) if [ `free | grep Swap | awk '{print $2}'` = 0 ] 
		then MakeFile
		else echo "Swap ist noch aktiv !, wird deaktiviert..."
		swapoff $FileOrt;echo "$FileOrt deaktiviert"
		MakeFile
   fi
		echo "Swapfile $FileOrt erstellt";;
5) if [ `free | grep Swap | awk '{print $2}'` != 0 ]
		then swapoff $FileOrt;rm $FileOrt
		else rm $FileOrt
   fi
		echo "Swapfile $FileOrt entfernt";;
6) InitD;;
7) RemoveInitD;;
q|Q) exit;;
esac
}

if [ `whoami` != "root" ]
then echo "Bitte als su ausfuehren"
exit 
fi

Auswahl
until [ $AntwortAuswahl = q ]
do Auswahl
done
