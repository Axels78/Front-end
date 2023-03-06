<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;Voulez-vous continuer o pour Oui&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Dividende" algoitem="Dividende EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Diviseur" algoitem="Diviseur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#ResteDiv" algoitem="ResteDiv EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#Continuer" algoitem="Continuer EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#Continuer#&quot;o&quot;#pasliste" algoitem="Continuer PREND_LA_VALEUR &quot;o&quot;"/>
        <item code="15#Continuer == &quot;o&quot;" algoitem="TANT_QUE (Continuer == &quot;o&quot;) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Donner la valeur du dividende#1" algoitem="AFFICHER &quot;Donner la valeur du dividende&quot;"/>
            <item code="2#Dividende#pasliste" algoitem="LIRE Dividende"/>
            <item code="4#Donner la valeur du diviseur#1" algoitem="AFFICHER &quot;Donner la valeur du diviseur&quot;"/>
            <item code="2#Diviseur#pasliste" algoitem="LIRE Diviseur"/>
            <item code="6#Diviseur==0" algoitem="SI (Diviseur==0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Le diviseur ne peut être 0#0" algoitem="AFFICHER &quot;Le diviseur ne peut être 0&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="19#Pour entre dans le cycle au moins une fois" algoitem="//Pour entre dans le cycle au moins une fois"/>
                    <item code="5#ResteDiv#1#pasliste" algoitem="ResteDiv PREND_LA_VALEUR 1"/>
                    <item code="15#ResteDiv != 0" algoitem="TANT_QUE (ResteDiv != 0) FAIRE">
                        <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                        <item code="5#ResteDiv#Dividende % Diviseur#pasliste" algoitem="ResteDiv PREND_LA_VALEUR Dividende % Diviseur"/>
                        <item code="6#ResteDiv!=0" algoitem="SI (ResteDiv!=0) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="5#Dividende#Diviseur#pasliste" algoitem="Dividende PREND_LA_VALEUR Diviseur"/>
                            <item code="5#Diviseur#ResteDiv#pasliste" algoitem="Diviseur PREND_LA_VALEUR ResteDiv"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                        </item>
                        <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                    </item>
                    <item code="4#Affiche le PGCD est : #0" algoitem="AFFICHER &quot;Affiche le PGCD est : &quot;"/>
                    <item code="3#Diviseur#1#pasliste" algoitem="AFFICHER Diviseur"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="4#Voulez-vous continuer o pour Oui#0" algoitem="AFFICHER &quot;Voulez-vous continuer o pour Oui&quot;"/>
            <item code="2#Continuer#pasliste" algoitem="LIRE Continuer"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
