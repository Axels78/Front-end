<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="nbgrand PREND_LA_VALEUR nbgrand+1" texte=""/>
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
        <item code="1#LISTE#tab2" algoitem="tab2 EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#nbgrand" algoitem="nbgrand EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pos" algoitem="pos EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nbgrand#0#pasliste" algoitem="nbgrand PREND_LA_VALEUR 0"/>
        <item code="4#combien de valeur souhaité vous saisir :#0" algoitem="AFFICHER &quot;combien de valeur souhaité vous saisir :&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="12#i#0#n" algoitem="POUR i ALLANT_DE 0 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#entrez une valeur#1" algoitem="AFFICHER &quot;entrez une valeur&quot;"/>
            <item code="2#tab#i" algoitem="LIRE tab[i]"/>
            <item code="6#tab[i]>nbgrand" algoitem="SI (tab[i]>nbgrand) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#nbgrand#tab[i]#pasliste" algoitem="nbgrand PREND_LA_VALEUR tab[i]"/>
                <item code="5#pos#i#pasliste" algoitem="pos PREND_LA_VALEUR i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le plus grand nombre est:#0" algoitem="AFFICHER &quot;Le plus grand nombre est:&quot;"/>
        <item code="3#nbgrand#1#pasliste" algoitem="AFFICHER nbgrand"/>
        <item code="4#sa position etait:#0" algoitem="AFFICHER &quot;sa position etait:&quot;"/>
        <item code="5#pos#pos+1#pasliste" algoitem="pos PREND_LA_VALEUR pos+1"/>
        <item code="3#pos#1#pasliste" algoitem="AFFICHER pos"/>
        <item code="4#tableau2 :#1" algoitem="AFFICHER &quot;tableau2 :&quot;"/>
        <item code="12#i#0#n" algoitem="POUR i ALLANT_DE 0 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tab2#tab[i]+1#i" algoitem="tab2[i] PREND_LA_VALEUR tab[i]+1"/>
            <item code="3#tab2#1#i" algoitem="AFFICHER tab2[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#dan le tableaux deux la plus grande valeur sera :#1" algoitem="AFFICHER &quot;dan le tableaux deux la plus grande valeur sera :&quot;"/>
        <item code="5#nbgrand#nbgrand+1#pasliste" algoitem="nbgrand PREND_LA_VALEUR nbgrand+1"/>
        <item code="3#nbgrand#1#pasliste" algoitem="AFFICHER nbgrand"/>
        <item code="4#Elle etait rang:#1" algoitem="AFFICHER &quot;Elle etait rang:&quot;"/>
        <item code="3#pos#1#pasliste" algoitem="AFFICHER pos"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
