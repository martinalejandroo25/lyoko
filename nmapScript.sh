#!/bin/bash
#Script para el mapeo automatizado de Redes y puertos con NMAP

menu(){
	echo "<lo que se debe insertar> (ejemplo) <target es la IP>"
	echo "-----------------------------------"
	echo "1.Escaneo simple de dirección(<IP> o <rango de IP> (192.168.1.1 o 192.168.1.1/24))"
	echo "2.Escaneo de un rango de puerto específico(ejemplo de usos 1-100 192.168.1.1)"
	echo "3.Escaneo rápido"
	echo "------------------------------------"
	echo "DESCUBRIMIENTO DE HOST"
	echo "4.Descubrimiento de host sin hacer ping(<target>)"
	echo "Descubrimiento de host(solo ping)(<target>)"
	echo "------------------------------------"
	echo "ESCANEO DE PUERTOS ESPECIFICOS"
	echo "5.Escaneo de puertos TCP 
	((<rango Puertos>(21-25) <target>(192.168.1.1))"
	echo "6.Ecaneo de puertos UDP 
	(<rango puertos>(123,161) <target>(192.168.1.1))"
	echo "------------------------------------"
	echo "TECNICAS DE ESCANEO"
	echo "7.Escaneo SYN <target>"
	echo "8.Escaneo completo de conexión TCP <target>"
	echo "9.Escaneo XMAS <target>"
	echo "------------------------------------"
	echo "ESCANEO DE SERVICIOS Y VERSIONES"
	echo "Deteccion de servicios y versiones <target>"
	echo "10.Escaneo con Scripts de NSE 
	(<Categoria o script específico> <target(192.168.1.1)>)"
	echo "------------------------------------"
	echo "Guardar resultado con -oN <nombreFichero>"
	echo "0.Salir"
	echo "------------------------------------"
	read opcion
	case $opcion in
		1)
			echo "inserte <target> o <rango de IPs>"
			read target
			nmap "$target"
			;;
		2)
			echo "inserte <rango de puertos>"
			read rango
			echo "inserte target"
			read target
			nmap -p "$puerto" "$target"
			;;
		3)
			echo "inserte <target>"
			read target
			nmap -T4 -F $target
			;;
		4)
			echo "inserte <target>"
			read target
			nmap -Pn $target
			;;
		5)
			echo "inserte <target>"
			read target
			nmap -sn $target
			;;
		6)
			echo "inserte <puertos>(21-25)"
			read puerto
			echo "inserte <target>"
			read target
			nmap -p T:$puerto $target
			;;
		7)
			echo "inserte <>"
		0)
			echo "Hasta pronto :)"
			exit 1
			;;
		*)
			echo "opción no válida intente otra"
			return 1
			;;
	
	esac
}

while true; do
	menu
done
