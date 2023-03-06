<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="pos EST_DU_TYPE NOMBRE"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" arrondiAuto="vrai" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbgrand" algoitem="nbgrand EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pos" algoitem="pos EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nbgrand#0#pasliste" algoitem="nbgrand PREND_LA_VALEUR 0"/>
        <item code="5#i#0#pasliste" algoitem="i PREND_LA_VALEUR 0"/>
        <item code="5#pos#0#pasliste" algoitem="pos PREND_LA_VALEUR 0"/>
        <item code="12#i#1#20" algoitem="POUR i ALLANT_DE 1 A 20">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entré un nombre:#0" algoitem="AFFICHER &quot;Entré un nombre:&quot;"/>
            <item code="2#nb#pasliste" algoitem="LIRE nb"/>
            <item code="6#nb>nbgrand" algoitem="SI (nb>nbgrand) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#nbgrand#nb#pasliste" algoitem="nbgrand PREND_LA_VALEUR nb"/>
                <item code="5#pos#i#pasliste" algoitem="pos PREND_LA_VALEUR i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le plus grand nombre est:#0" algoitem="AFFICHER &quot;Le plus grand nombre est:&quot;"/>
        <item code="3#nbgrand#1#pasliste" algoitem="AFFICHER nbgrand"/>
        <item code="4#sa position etait:#0" algoitem="AFFICHER &quot;sa position etait:&quot;"/>
        <item code="3#pos#0#pasliste" algoitem="AFFICHER pos"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
