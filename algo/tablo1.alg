<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="POUR boucle1 ALLANT_DE 0 A 4"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" totalAffichages="1000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tableau EST_DU_TYPE LISTE" code="1#LISTE#tableau"/>
        <item algoitem="boucle1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#boucle1"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR boucle1 ALLANT_DE 0 A 4" code="12#boucle1#0#4">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="tableau[boucle1] PREND_LA_VALEUR boucle1" code="5#tableau#boucle1#boucle1"/>
            <item algoitem="AFFICHER tableau[boucle1]" code="3#tableau#0#boucle1"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
