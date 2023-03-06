<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;produit négatif&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" arrondiAuto="vrai" maxBoucle="500000" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbr1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbr1"/>
        <item algoitem="nr2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nr2"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE nbr1" code="2#nbr1#pasliste"/>
        <item algoitem="LIRE nr2" code="2#nr2#pasliste"/>
        <item algoitem="SI ((nbr1>0 ET nr2>0) OU (nbr1&lt;0 et nr2&lt;0)) ALORS" code="6#(nbr1>0 ET nr2>0) OU (nbr1&lt;0 et nr2&lt;0)">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;le resultat du produit des nombres sera positif&quot;" code="4#le resultat du produit des nombres sera positif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (nbr1==0 ou nr2==0) ALORS" code="6#nbr1==0 ou nr2==0">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;produit nul&quot;" code="4#produit nul#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;produit négatif&quot;" code="4#produit négatif#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
