<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="tab[b1] PREND_LA_VALEUR not"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#b1" algoitem="b1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#not" algoitem="not EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="12#b1#0#8" algoitem="POUR b1 ALLANT_DE 0 A 8">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tab#not#b1" algoitem="tab[b1] PREND_LA_VALEUR not"/>
            <item code="2#not#pasliste" algoitem="LIRE not"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#tab#0#b1" algoitem="AFFICHER tab[b1]"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
