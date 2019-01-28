#!/bin/bash

#initialisation des variables



read -p "tapez votre chiffre (max 8 caractères) : " chiffre_arabe



while (( ${#chiffre_arabe}>8))
do
	if  (( ${#chiffre_arabe}>8));then
	echo La longueur de votre chiffre est supérieure à 8 caractères
	read -p "tapez votre chiffre (max 8 caractères) : " chiffre_arabe

fi
done


chiffre_romain=""
chiffre_tampon=0
 
echo le chiffre arabe est  $chiffre_arabe 


#Boucle itérative pour traiter les miliers

while [ $chiffre_arabe -ge 1000 ];
do
	chiffre_arabe=$((chiffre_arabe-=1000))
	chiffre_romain=$chiffre_romain"M"
done


#Boucle iterative pour traiter les centaines
#Décrementation de la variable chiffre_arabe et incrémentation de la variable chiffre tampon

while [ $chiffre_arabe -ge 100 ];
do
	chiffre_arabe=$((chiffre_arabe-=100))
	chiffre_tampon=$((chiffre_tampon+=100))
done

#Traitement de la variable chiffre tampon pour transcription en chiffre romain

case $chiffre_tampon in
	900) chiffre_romain=$chiffre_romain"CM" ;;
	800) chiffre_romain=$chiffre_romain"DCCC" ;;
	700) chiffre_romain=$chiffre_romain"DCC" ;;
	600) chiffre_romain=$chiffre_romain"DC" ;;
	500) chiffre_romain=$chiffre_romain"D" ;;
	400) chiffre_romain=$chiffre_romain"CD" ;;
	300) chiffre_romain=$chiffre_romain"CCC" ;;
	200) chiffre_romain=$chiffre_romain"CC" ;;
	100) chiffre_romain=$chiffre_romain"C" ;;
esac

#Boucle iterative pour traiter les dizaines
#Décrementation de la variable chiffre_arabe et incrémentation de la variable chiffre tampon
#
	chiffre_tampon=0

while [ $chiffre_arabe -ge 10 ];
do
	chiffre_arabe=$((chiffre_arabe-=10))
	chiffre_tampon=$((chiffre_tampon+=10))
done

#Traitement de la variable chiffre tampon pour transcription en chiffre romain

case $chiffre_tampon in
	90) chiffre_romain=$chiffre_romain"XC" ;;
	80) chiffre_romain=$chiffre_romain"LXXX" ;;
	70) chiffre_romain=$chiffre_romain"LXX" ;;
	60) chiffre_romain=$chiffre_romain"LX" ;;
	50) chiffre_romain=$chiffre_romain"L" ;;
	40) chiffre_romain=$chiffre_romain"XL" ;;
	30) chiffre_romain=$chiffre_romain"XXX" ;;
	20) chiffre_romain=$chiffre_romain"XX" ;;
	10) chiffre_romain=$chiffre_romain"X" ;;
esac

#Boucle iterative pour traiter les nombres
#Décrementation de la variable chiffre_arabe et incrémentation de la variable chiffre tampon
#
	chiffre_tampon=0

while [ $chiffre_arabe -ge 1 ];
do
	chiffre_arabe=$((chiffre_arabe-=1))
	chiffre_tampon=$((chiffre_tampon+=1))
done

#Traitement de la variable chiffre tampon pour transcription en chiffre romain

case $chiffre_tampon in
	9) chiffre_romain=$chiffre_romain"IX" ;;
	8) chiffre_romain=$chiffre_romain"VIII" ;;
	7) chiffre_romain=$chiffre_romain"VII" ;;
	6) chiffre_romain=$chiffre_romain"VI" ;;
	5) chiffre_romain=$chiffre_romain"V" ;;
	4) chiffre_romain=$chiffre_romain"IV" ;;
	3) chiffre_romain=$chiffre_romain"III" ;;
	2) chiffre_romain=$chiffre_romain"II" ;;
	1) chiffre_romain=$chiffre_romain"I" ;;
esac
echo dont le chiffre romain est : $chiffre_romain
