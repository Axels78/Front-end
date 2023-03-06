<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER tab3[i]" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tab1" algoitem="tab1 EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#tab2" algoitem="tab2 EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#tab3" algoitem="tab3 EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#tableau 1:#1" algoitem="AFFICHER &quot;tableau 1:&quot;"/>
        <item code="12#i#0#7" algoitem="POUR i ALLANT_DE 0 A 7">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tab1#4#0" algoitem="tab1[0] PREND_LA_VALEUR 4"/>
            <item code="5#tab1#8#1" algoitem="tab1[1] PREND_LA_VALEUR 8"/>
            <item code="5#tab1#7#2" algoitem="tab1[2] PREND_LA_VALEUR 7"/>
            <item code="5#tab1#9#3" algoitem="tab1[3] PREND_LA_VALEUR 9"/>
            <item code="5#tab1#1#4" algoitem="tab1[4] PREND_LA_VALEUR 1"/>
            <item code="5#tab1#5#5" algoitem="tab1[5] PREND_LA_VALEUR 5"/>
            <item code="5#tab1#4#6" algoitem="tab1[6] PREND_LA_VALEUR 4"/>
            <item code="5#tab1#6#7" algoitem="tab1[7] PREND_LA_VALEUR 6"/>
            <item code="3#tab1#1#i" algoitem="AFFICHER tab1[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#tableau 2#1" algoitem="AFFICHER &quot;tableau 2&quot;"/>
        <item code="12#i#0#7" algoitem="POUR i ALLANT_DE 0 A 7">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tab2#7#0" algoitem="tab2[0] PREND_LA_VALEUR 7"/>
            <item code="5#tab2#6#1" algoitem="tab2[1] PREND_LA_VALEUR 6"/>
            <item code="5#tab2#5#2" algoitem="tab2[2] PREND_LA_VALEUR 5"/>
            <item code="5#tab2#2#3" algoitem="tab2[3] PREND_LA_VALEUR 2"/>
            <item code="5#tab2#1#4" algoitem="tab2[4] PREND_LA_VALEUR 1"/>
            <item code="5#tab2#3#5" algoitem="tab2[5] PREND_LA_VALEUR 3"/>
            <item code="5#tab2#7#6" algoitem="tab2[6] PREND_LA_VALEUR 7"/>
            <item code="5#tab2#4#7" algoitem="tab2[7] PREND_LA_VALEUR 4"/>
            <item code="3#tab2#1#i" algoitem="AFFICHER tab2[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#tableau 3:#1" algoitem="AFFICHER &quot;tableau 3:&quot;"/>
        <item code="12#i#0#7" algoitem="POUR i ALLANT_DE 0 A 7">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tab3#tab1[i]+tab2[i]#i" algoitem="tab3[i] PREND_LA_VALEUR tab1[i]+tab2[i]"/>
            <item code="3#tab3#1#i" algoitem="AFFICHER tab3[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
