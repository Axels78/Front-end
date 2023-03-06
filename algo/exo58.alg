<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="nbr PREND_LA_VALEUR 1"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" totalAffichages="1000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbr EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbr"/>
        <item algoitem="nbr2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbr2"/>
        <item algoitem="var3 EST_DU_TYPE NOMBRE" code="1#NOMBRE#var3"/>
        <item algoitem="var4 EST_DU_TYPE NOMBRE" code="1#NOMBRE#var4"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="var3 PREND_LA_VALEUR 0" code="5#var3#0#pasliste"/>
        <item algoitem="nbr2 PREND_LA_VALEUR 0" code="5#nbr2#0#pasliste"/>
        <item algoitem="nbr PREND_LA_VALEUR 1" code="5#nbr#1#pasliste"/>
        <item algoitem="TANT_QUE (nbr!=0) FAIRE" code="15#nbr!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="nbr2 PREND_LA_VALEUR nbr2+1" code="5#nbr2#nbr2+1#pasliste"/>
            <item algoitem="AFFICHER &quot;valeur de nombre &quot;" code="4#valeur de nombre #0"/>
            <item algoitem="AFFICHER nbr2" code="3#nbr2#0#pasliste"/>
            <item algoitem="AFFICHER &quot; :&quot;" code="4# :#0"/>
            <item algoitem="LIRE nbr" code="2#nbr#pasliste"/>
            <item algoitem="SI (nbr>var3) ALORS" code="6#nbr>var3">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="var3 PREND_LA_VALEUR nbr" code="5#var3#nbr#pasliste"/>
                <item algoitem="var4 PREND_LA_VALEUR nbr2" code="5#var4#nbr2#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;le nombre le plus haut etait:&quot;" code="4#le nombre le plus haut etait:#0"/>
        <item algoitem="AFFICHER var3" code="3#var3#1#pasliste"/>
        <item algoitem="AFFICHER &quot;il etait positionné :&quot;" code="4#il etait positionné :#0"/>
        <item algoitem="AFFICHER var4" code="3#var4#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
