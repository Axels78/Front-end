<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER var3" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbr EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbr"/>
        <item algoitem="nbr2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbr2"/>
        <item algoitem="var3 EST_DU_TYPE NOMBRE" code="1#NOMBRE#var3"/>
        <item algoitem="var4 EST_DU_TYPE NOMBRE" code="1#NOMBRE#var4"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="var3 PREND_LA_VALEUR 0" code="5#var3#0#pasliste"/>
        <item algoitem="POUR nbr2 ALLANT_DE 1 A 20" code="12#nbr2#1#20">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;valeur de nombre&quot;" code="4#valeur de nombre#0"/>
            <item algoitem="LIRE nbr" code="2#nbr#pasliste"/>
            <item algoitem="SI (nbr>var3 ou nbr2==1) ALORS" code="6#nbr>var3 ou nbr2==1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="var3 PREND_LA_VALEUR nbr" code="5#var3#nbr#pasliste"/>
                <item algoitem="var4 PREND_LA_VALEUR nbr2" code="5#var4#nbr2#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;le nombre le plus haut etait:&quot;" code="4#le nombre le plus haut etait:#0"/>
        <item algoitem="AFFICHER var3" code="3#var3#1#pasliste"/>
        <item algoitem="AFFICHER &quot;il etait positionné :&quot;" code="4#il etait positionné :#0"/>
        <item algoitem="AFFICHER var4" code="3#var4#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
