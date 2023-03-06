<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER nbr" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr" algoitem="nbr EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#entrez un nombre:#0" algoitem="AFFICHER &quot;entrez un nombre:&quot;"/>
        <item code="2#nbr#pasliste" algoitem="LIRE nbr"/>
        <item code="4#le carré de nombre est:#0" algoitem="AFFICHER &quot;le carré de nombre est:&quot;"/>
        <item code="5#nbr#nbr*nbr#pasliste" algoitem="nbr PREND_LA_VALEUR nbr*nbr"/>
        <item code="3#nbr#0#pasliste" algoitem="AFFICHER nbr"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
