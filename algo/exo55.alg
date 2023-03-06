<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;saisir un nombre:&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr" algoitem="nbr EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbr2" algoitem="nbr2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#result" algoitem="result EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nbr2#1#pasliste" algoitem="nbr2 PREND_LA_VALEUR 1"/>
        <item code="4#saisir un nombre:#0" algoitem="AFFICHER &quot;saisir un nombre:&quot;"/>
        <item code="2#nbr#pasliste" algoitem="LIRE nbr"/>
        <item code="4#table de :#0" algoitem="AFFICHER &quot;table de :&quot;"/>
        <item code="3#nbr#1#pasliste" algoitem="AFFICHER nbr"/>
        <item code="12#nbr2#1#10" algoitem="POUR nbr2 ALLANT_DE 1 A 10">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#result#nbr*nbr2#pasliste" algoitem="result PREND_LA_VALEUR nbr*nbr2"/>
            <item code="3#nbr#0#pasliste" algoitem="AFFICHER nbr"/>
            <item code="4#*#0" algoitem="AFFICHER &quot;*&quot;"/>
            <item code="3#nbr2#0#pasliste" algoitem="AFFICHER nbr2"/>
            <item code="4#=#0" algoitem="AFFICHER &quot;=&quot;"/>
            <item code="3#result#1#pasliste" algoitem="AFFICHER result"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
