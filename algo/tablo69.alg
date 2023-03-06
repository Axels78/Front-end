<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="LIRE tab[i]" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#s" algoitem="s EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#s#0#pasliste" algoitem="s PREND_LA_VALEUR 0"/>
        <item code="12#i#0#8" algoitem="POUR i ALLANT_DE 0 A 8">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#entrez la note:#0" algoitem="AFFICHER &quot;entrez la note:&quot;"/>
            <item code="2#tab#i" algoitem="LIRE tab[i]"/>
            <item code="5#s#s+tab[i]#pasliste" algoitem="s PREND_LA_VALEUR s+tab[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#i#0#8" algoitem="POUR i ALLANT_DE 0 A 8">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#tab#1#i" algoitem="AFFICHER tab[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#le total est egal à:#0" algoitem="AFFICHER &quot;le total est egal à:&quot;"/>
        <item code="3#s#0#pasliste" algoitem="AFFICHER s"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
