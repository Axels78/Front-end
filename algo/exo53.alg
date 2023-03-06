<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;entrez votre nombre&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr" algoitem="nbr EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbr2" algoitem="nbr2 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#entrez votre nombre#0" algoitem="AFFICHER &quot;entrez votre nombre&quot;"/>
        <item code="5#nbr2#1#pasliste" algoitem="nbr2 PREND_LA_VALEUR 1"/>
        <item code="2#nbr#pasliste" algoitem="LIRE nbr"/>
        <item code="15#nbr2&lt;=10" algoitem="TANT_QUE (nbr2&lt;=10) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#nbr2#nbr2+1#pasliste" algoitem="nbr2 PREND_LA_VALEUR nbr2+1"/>
            <item code="5#nbr#nbr+1#pasliste" algoitem="nbr PREND_LA_VALEUR nbr+1"/>
            <item code="3#nbr#0#pasliste" algoitem="AFFICHER nbr"/>
            <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
