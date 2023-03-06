<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;quel est le prix du produit hors taxes ?&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" epaisseurLigne="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="prixht EST_DU_TYPE NOMBRE" code="1#NOMBRE#prixht"/>
        <item algoitem="tva EST_DU_TYPE NOMBRE" code="1#NOMBRE#tva"/>
        <item algoitem="nbrart EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbrart"/>
        <item algoitem="prittc EST_DU_TYPE NOMBRE" code="1#NOMBRE#prittc"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;quel est le prix du produit hors taxes ?&quot;" code="4#quel est le prix du produit hors taxes ?#0"/>
        <item algoitem="LIRE prixht" code="2#prixht#pasliste"/>
        <item algoitem="AFFICHER &quot;Quel est le montant de la tva(exemple:pour 20% on mettra 0.2) ?&quot;" code="4#Quel est le montant de la tva(exemple:pour 20% on mettra 0.2) ?#0"/>
        <item algoitem="LIRE tva" code="2#tva#pasliste"/>
        <item algoitem="AFFICHER &quot;En combien d'exemplaire avait vous pris cette article ?&quot;" code="4#En combien d'exemplaire avait vous pris cette article ?#0"/>
        <item algoitem="LIRE nbrart" code="2#nbrart#pasliste"/>
        <item algoitem="prittc PREND_LA_VALEUR prixht+(prixht*tva)" code="5#prittc#prixht+(prixht*tva)#pasliste"/>
        <item algoitem="prixht PREND_LA_VALEUR prittc*nbrart" code="5#prixht#prittc*nbrart#pasliste"/>
        <item algoitem="AFFICHER &quot;voici le prix total correspondant:&quot;" code="4#voici le prix total correspondant:#0"/>
        <item algoitem="AFFICHER prixht" code="3#prixht#0#pasliste"/>
        <item algoitem="AFFICHER &quot;€&quot;" code="4#€#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
