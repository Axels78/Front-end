<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="tab2[i] PREND_LA_VALEUR tab[i]+1" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#m" algoitem="m EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#neg" algoitem="neg EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab2" algoitem="tab2 EST_DU_TYPE LISTE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#combien de valeur souhaité vous saisir :#0" algoitem="AFFICHER &quot;combien de valeur souhaité vous saisir :&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="12#i#0#n" algoitem="POUR i ALLANT_DE 0 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#entrez une valeur#0" algoitem="AFFICHER &quot;entrez une valeur&quot;"/>
            <item code="2#tab#i" algoitem="LIRE tab[i]"/>
            <item code="6#tab[i]>0" algoitem="SI (tab[i]>0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#m#m+1#pasliste" algoitem="m PREND_LA_VALEUR m+1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="6#tab[i]&lt;0" algoitem="SI (tab[i]&lt;0) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#neg#neg+1#pasliste" algoitem="neg PREND_LA_VALEUR neg+1"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#il y a :#0" algoitem="AFFICHER &quot;il y a :&quot;"/>
        <item code="3#m#0#pasliste" algoitem="AFFICHER m"/>
        <item code="4#valeur positive#1" algoitem="AFFICHER &quot;valeur positive&quot;"/>
        <item code="4#il y a :#0" algoitem="AFFICHER &quot;il y a :&quot;"/>
        <item code="3#neg#0#pasliste" algoitem="AFFICHER neg"/>
        <item code="4#valeur négative#1" algoitem="AFFICHER &quot;valeur négative&quot;"/>
        <item code="4#Tableau2:#1" algoitem="AFFICHER &quot;Tableau2:&quot;"/>
        <item code="12#i#0#n" algoitem="POUR i ALLANT_DE 0 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tab2#tab[i]+1#i" algoitem="tab2[i] PREND_LA_VALEUR tab[i]+1"/>
            <item code="3#tab2#1#i" algoitem="AFFICHER tab2[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
