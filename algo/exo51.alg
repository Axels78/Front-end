<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;reponse incorrecte&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr" algoitem="nbr EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nbr#0#pasliste" algoitem="nbr PREND_LA_VALEUR 0"/>
        <item code="15#nbr&lt;1 ou nbr>3" algoitem="TANT_QUE (nbr&lt;1 ou nbr>3) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#reponse incorrecte#1" algoitem="AFFICHER &quot;reponse incorrecte&quot;"/>
            <item code="4#entrez un nombre compris entre 1 et 3#0" algoitem="AFFICHER &quot;entrez un nombre compris entre 1 et 3&quot;"/>
            <item code="2#nbr#pasliste" algoitem="LIRE nbr"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#bonne réponse#0" algoitem="AFFICHER &quot;bonne réponse&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
