#!/bin/bash

out="$(ping -w 2 -q ip_address | grep 'packets')"; 
pr="$(echo $out | awk '{print $1}')";
pl="$(echo $out | awk '{print $4}')";
if [[ $pl -eq 0 ]]
then
   echo "Echec de connexion. Veuillez voir l'état la connexion ou de l'appareil" | mail -s "Etat de connectivité" your_mail_address
fi
if [[ pl -ne 0 ]]
then
  echo "Votre connexion est établie" | mail -s "Etat de connectivité" your_mail_address
  
fi
