<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; grain de riz&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="caze EST_DU_TYPE NOMBRE" code="1#NOMBRE#caze"/>
        <item algoitem="riz EST_DU_TYPE NOMBRE" code="1#NOMBRE#riz"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="riz PREND_LA_VALEUR 1" code="5#riz#1#pasliste"/>
        <item algoitem="POUR caze ALLANT_DE 1 A 64" code="12#caze#1#64">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="riz PREND_LA_VALEUR riz*2" code="5#riz#riz*2#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Il y aura :&quot;" code="4#Il y aura :#0"/>
        <item algoitem="AFFICHER riz" code="3#riz#0#pasliste"/>
        <item algoitem="AFFICHER &quot; grain de riz&quot;" code="4# grain de riz#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
