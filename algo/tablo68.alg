<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;valeur positive&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000" maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="m EST_DU_TYPE NOMBRE" code="1#NOMBRE#m"/>
        <item algoitem="neg EST_DU_TYPE NOMBRE" code="1#NOMBRE#neg"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;combien de valeur souhaité vous saisir :&quot;" code="4#combien de valeur souhaité vous saisir :#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n" code="12#i#0#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;entrez une valeur&quot;" code="4#entrez une valeur#0"/>
            <item algoitem="LIRE tab[i]" code="2#tab#i"/>
            <item algoitem="SI (tab[i]>0) ALORS" code="6#tab[i]>0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="m PREND_LA_VALEUR m+1" code="5#m#m+1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="SI (tab[i]&lt;0) ALORS" code="6#tab[i]&lt;0">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="neg PREND_LA_VALEUR neg+1" code="5#neg#neg+1#pasliste"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                    </item>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;il y a :&quot;" code="4#il y a :#0"/>
        <item algoitem="AFFICHER m" code="3#m#0#pasliste"/>
        <item algoitem="AFFICHER &quot;valeur positive&quot;" code="4#valeur positive#1"/>
        <item algoitem="AFFICHER &quot;il y a :&quot;" code="4#il y a :#0"/>
        <item algoitem="AFFICHER neg" code="3#neg#0#pasliste"/>
        <item algoitem="AFFICHER &quot;valeur négative&quot;" code="4#valeur négative#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
