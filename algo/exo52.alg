<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="nbr EST_DU_TYPE NOMBRE"/>
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
        <item code="15#nbr&lt;10 ou nbr>20" algoitem="TANT_QUE (nbr&lt;10 ou nbr>20) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#valeur du nombre ?#1" algoitem="AFFICHER &quot;valeur du nombre ?&quot;"/>
            <item code="2#nbr#pasliste" algoitem="LIRE nbr"/>
            <item code="6#nbr>=10 et nbr&lt;=20" algoitem="SI (nbr>=10 et nbr&lt;=20) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#bonne pioche#1" algoitem="AFFICHER &quot;bonne pioche&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#nbr&lt;10" algoitem="SI (nbr&lt;10) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#trop petit#1" algoitem="AFFICHER &quot;trop petit&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="6#nbr>20" algoitem="SI (nbr>20) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="4#trop grand#1" algoitem="AFFICHER &quot;trop grand&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
