<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;Valeur du Schtroumpf&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab1 EST_DU_TYPE LISTE" code="1#LISTE#tab1"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="tab2 EST_DU_TYPE LISTE" code="1#LISTE#tab2"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
        <item algoitem="r EST_DU_TYPE NOMBRE" code="1#NOMBRE#r"/>
        <item algoitem="m EST_DU_TYPE NOMBRE" code="1#NOMBRE#m"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;tableau 1:&quot;" code="4#tableau 1:#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A 7" code="12#i#0#7">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="tab1[i] PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,10)" code="5#tab1#ALGOBOX_ALEA_ENT(1,10)#i"/>
            <item algoitem="AFFICHER tab1[i]" code="3#tab1#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;tableau 2:&quot;" code="4#tableau 2:#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A 7" code="12#i#0#7">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="tab2[i] PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,10)" code="5#tab2#ALGOBOX_ALEA_ENT(1,10)#i"/>
            <item algoitem="AFFICHER tab2[i]" code="3#tab2#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;calcul de schtroumpf:&quot;" code="4#calcul de schtroumpf:#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A 7" code="12#i#0#7">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tab2[i]" code="3#tab2#1#i"/>
            <item algoitem="POUR m ALLANT_DE 0 A 7" code="12#m#0#7">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="s PREND_LA_VALEUR (tab2[i]*tab1[m])+s" code="5#s#(tab2[i]*tab1[m])+s#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Valeur du Schtroumpf&quot;" code="4#Valeur du Schtroumpf#1"/>
        <item algoitem="AFFICHER s" code="3#s#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
