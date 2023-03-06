<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER tab[0]" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" nbDecimales="8" totalBoucles="5000000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="tab[0] PREND_LA_VALEUR a" code="5#tab#a#0"/>
        <item algoitem="tab[1] PREND_LA_VALEUR e" code="5#tab#e#1"/>
        <item algoitem="tab[2] PREND_LA_VALEUR i" code="5#tab#i#2"/>
        <item algoitem="tab[3] PREND_LA_VALEUR o" code="5#tab#o#3"/>
        <item algoitem="tab[4] PREND_LA_VALEUR u" code="5#tab#u#4"/>
        <item algoitem="tab[5] PREND_LA_VALEUR y" code="5#tab#y#5"/>
        <item algoitem="AFFICHER tab[0]" code="3#tab#0#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
