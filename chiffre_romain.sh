#!/bin/bash

until [[ ${chiffre} =~ ^[0-9]+$  ]];
	do 
	read -p 'saisissez un chiffre de longueur max 8 digits (uniquement un/des entier(s)) :' chiffre
	done

while [[ ${#chiffre} -gt 8 ]] || [[ ${chiffre} =~ ^[0-9]+$  ]]
	do
		echo "votre saisie comporte trop de digit"
		read -p 'saisissez un chiffre (max 8 digits) :' chiffre
	done


echo "vous avez saisi le chiffre :  $chiffre"



