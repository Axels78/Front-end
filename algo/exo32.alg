<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;donnez nous le seconds nombre&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr1" algoitem="nbr1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nr2" algoitem="nr2 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#donnez nous le premier nombre:#0" algoitem="AFFICHER &quot;donnez nous le premier nombre:&quot;"/>
        <item code="2#nbr1#pasliste" algoitem="LIRE nbr1"/>
        <item code="4#donnez nous le seconds nombre#0" algoitem="AFFICHER &quot;donnez nous le seconds nombre&quot;"/>
        <item code="2#nr2#pasliste" algoitem="LIRE nr2"/>
        <item code="6#nbr1>0 ET nr2>0" algoitem="SI (nbr1>0 ET nr2>0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#le resultat du produit des nombres sera positif#0" algoitem="AFFICHER &quot;le resultat du produit des nombres sera positif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#nbr1&lt;0 ET nr2&lt;0" algoitem="SI (nbr1&lt;0 ET nr2&lt;0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Le resultat du produit sera positif#0" algoitem="AFFICHER &quot;Le resultat du produit sera positif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#nbr1&lt;0 et nr2>0 ou nbr1>0 et nr2&lt;0" algoitem="SI (nbr1&lt;0 et nr2>0 ou nbr1>0 et nr2&lt;0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#le produit sera négatif#0" algoitem="AFFICHER &quot;le produit sera négatif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
