#!/bin/bash

progreso () {
    echo -ne ">>>>>                           [20%] \r"
    sleep 1
    echo -ne ">>>>>>>>>>                      [40%] \r"
    sleep 0.5
    echo -ne ">>>>>>>>>>>>>>>>>               [60%] \r"
    sleep 2
    echo -ne ">>>>>>>>>>>>>>>>>>>>>>>>        [80%] \r"
    sleep 1.5
    echo -ne ">>>>>>>>>>>>>>>>>>>>>>>>>>>>> [100%] \r"
    echo -ne "\n"
}

case $1 in
	"-e" | "--encriptador")
clear
echo "###################################"
echo "#                                 #"
echo "#     Script de encriptación      #"
echo "#           basado en el          #"
echo "#   cifrado de archivos AES-256   #"
echo "#                                 #"
echo "#      Juan José Jiménez Gil      #"
echo "#                                 #"
echo "###################################"
sleep 6
clear
echo ""
echo "##################################################"
echo ""
read -sp "Inserte el texto que desea encriptar: " texto
echo ""
echo ""
echo "##################################################"
echo ""
sleep 4
clear
    echo ""
    echo "##################################################"
    echo ""
    echo "Generando clave de encriptación."
    echo ""
    progreso
    echo ""
    openssl rand -base64 128 > Clave.txt
    echo "Clave generada con éxito."
    echo ""
    echo "##################################################"
    echo ""
    sleep 4
    clear
echo ""
echo "##################################################"
echo ""
echo "Encriptando archivo."
echo ""
progreso
echo ""
echo $texto > Encriptado.txt
openssl aes-256-cbc -pbkdf2 -in Encriptado.txt -out Encriptado.3nc -pass file:Clave.txt
rm Encriptado.txt
echo "Archivo encriptado con éxito."
echo ""
echo "##################################################"
echo ""
sleep 4
clear 

;;

	"-d" | "--desencriptador")
	
clear
echo "###################################"
echo "#                                 #"
echo "#    Script de desencriptación    #"
echo "#           basado en el          #"
echo "#   cifrado de archivos AES-256   #"
echo "#                                 #"
echo "#      Juan José Jiménez Gil      #"
echo "#                                 #"
echo "###################################"
sleep 6
clear
echo ""
echo "##################################################"
echo ""

for archivo in $(find . -name "*.3nc")
do
    echo "Comprobando la clave de encriptación."
    echo ""

    if [ -e Clave.txt ]
    then
        progreso
        echo ""
        echo "Clave comprobada con éxito."
        echo ""
        echo "##################################################"
        echo ""
        sleep 4
        clear
    else
        echo "Clave de cifrado no encontrada."
        echo ""
        echo "##################################################"
        echo ""
        sleep 4
        clear
        exit
    fi
    echo ""
    echo "##################################################"
    echo ""
    echo "Desencriptando archivo."
    echo ""
    progreso
    openssl aes-256-cbc -pbkdf2 -d -in "$archivo" -out Desencriptado.d3nc -pass file:Clave.txt
    echo ""
    echo "Archivo desencriptado con éxito."
    echo ""
    echo "##################################################"
    echo ""
    sleep 4
    clear
done

echo "##################################################"
echo ""
read -N 1 -p "¿Deseas borrar los ficheros que continen la clave y el fichero inicial encriptado? [S/N]: " confirmacion

if [ "$confirmacion" == "S" ] || [ "$confirmacion" == "s" ]
then
    rm $archivo Clave.txt
    echo ""
    echo "Se ha borrado $archivo y Clave.txt."
    echo ""
    echo "##################################################"
    echo ""
    sleep 4
    clear
else
    if [ "$confirmacion" == "N" ] || [ "$confirmacion" == "n" ]
    then
        echo ""
        echo ""
        echo "No se han borrado los ficheros $archivo ni Clave.txt. Asegúrese de borrarlos manualmente para mayor seguridad."
        echo ""
        echo ""
        echo "##################################################"
        echo ""
        sleep 4
        clear
    else
        echo "Confirmación inválida. Se borrarán los archivos creados y se cerrará el programa."
        rm "${archivo%.*}.d3nc"
        echo ""
        echo "##################################################"
        echo ""
        exit
        sleep 4
        clear
    fi
fi

;;

	*)
	echo ""
	echo "Error. Debe introducirse un parámetro válido. El programa se cerrará."
	sleep 4
	clear
	exit
	;;
esac
