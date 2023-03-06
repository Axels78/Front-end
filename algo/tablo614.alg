<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" epaisseurPoint="2" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="nbgrand EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbgrand"/>
        <item algoitem="pos EST_DU_TYPE NOMBRE" code="1#NOMBRE#pos"/>
        <item algoitem="moy EST_DU_TYPE NOMBRE" code="1#NOMBRE#moy"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="nbgrand PREND_LA_VALEUR 0" code="5#nbgrand#0#pasliste"/>
        <item algoitem="AFFICHER &quot;combien de valeur souhaité vous saisir :&quot;" code="4#combien de valeur souhaité vous saisir :#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n" code="12#i#0#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;entrez une valeur&quot;" code="4#entrez une valeur#1"/>
            <item algoitem="LIRE tab[i]" code="2#tab#i"/>
            <item algoitem="moy PREND_LA_VALEUR moy+tab[i]" code="5#moy#moy+tab[i]#pasliste"/>
            <item algoitem="SI (tab[i]>nbgrand) ALORS" code="6#tab[i]>nbgrand">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="nbgrand PREND_LA_VALEUR tab[i]" code="5#nbgrand#tab[i]#pasliste"/>
                <item algoitem="pos PREND_LA_VALEUR i" code="5#pos#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A n" code="12#i#0#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tab[i]" code="3#tab#0#i"/>
            <item algoitem="SI (tab[i]>moy) ALORS" code="6#tab[i]>moy">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER tab[i]" code="3#tab#1#i"/>
                <item algoitem="" code="103#commentaire"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le plus grand nombre est:&quot;" code="4#Le plus grand nombre est:#0"/>
        <item algoitem="AFFICHER nbgrand" code="3#nbgrand#1#pasliste"/>
        <item algoitem="AFFICHER &quot;sa position etait:&quot;" code="4#sa position etait:#0"/>
        <item algoitem="pos PREND_LA_VALEUR pos+1" code="5#pos#pos+1#pasliste"/>
        <item algoitem="AFFICHER pos" code="3#pos#1#pasliste"/>
        <item algoitem="AFFICHER &quot;la moyenne est de :&quot;" code="4#la moyenne est de :#1"/>
        <item algoitem="moy PREND_LA_VALEUR moy/(n+1)" code="5#moy#moy/(n+1)#pasliste"/>
        <item algoitem="AFFICHER moy" code="3#moy#0#pasliste"/>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
