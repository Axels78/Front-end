<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;le calcul est egal à:&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr" algoitem="nbr EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#calc" algoitem="calc EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#saisir nombre#0" algoitem="AFFICHER &quot;saisir nombre&quot;"/>
        <item code="2#nbr#pasliste" algoitem="LIRE nbr"/>
        <item code="5#n#0#pasliste" algoitem="n PREND_LA_VALEUR 0"/>
        <item code="12#calc#1#nbr" algoitem="POUR calc ALLANT_DE 1 A nbr">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#n#calc+n#pasliste" algoitem="n PREND_LA_VALEUR calc+n"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#le calcul est egal à:#0" algoitem="AFFICHER &quot;le calcul est egal à:&quot;"/>
        <item code="3#n#0#pasliste" algoitem="AFFICHER n"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
