<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;billets de 5€&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="prix EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix"/>
        <item algoitem="nbart EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbart"/>
        <item algoitem="prixtot EST_DU_TYPE NOMBRE" code="1#NOMBRE#prixtot"/>
        <item algoitem="som EST_DU_TYPE NOMBRE" code="1#NOMBRE#som"/>
        <item algoitem="surpl EST_DU_TYPE NOMBRE" code="1#NOMBRE#surpl"/>
        <item algoitem="sup EST_DU_TYPE NOMBRE" code="1#NOMBRE#sup"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="prixtot PREND_LA_VALEUR 0" code="5#prixtot#0#pasliste"/>
        <item algoitem="AFFICHER &quot;combient d'article avez vous ?&quot;" code="4#combient d'article avez vous ?#0"/>
        <item algoitem="LIRE nbart" code="2#nbart#pasliste"/>
        <item algoitem="TANT_QUE (nbart!=0) FAIRE" code="15#nbart!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;quel est le prix des articles ?&quot;" code="4#quel est le prix des articles ?#0"/>
            <item algoitem="LIRE prix" code="2#prix#pasliste"/>
            <item algoitem="prixtot PREND_LA_VALEUR prixtot+prix" code="5#prixtot#prixtot+prix#pasliste"/>
            <item algoitem="nbart PREND_LA_VALEUR nbart-1" code="5#nbart#nbart-1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;le prix total est de :&quot;" code="4#le prix total est de :#0"/>
        <item algoitem="AFFICHER prixtot" code="3#prixtot#0#pasliste"/>
        <item algoitem="AFFICHER &quot;€&quot;" code="4#€#1"/>
        <item algoitem="AFFICHER &quot;combien vous payez nous ?&quot;" code="4#combien vous payez nous ?#0"/>
        <item algoitem="LIRE som" code="2#som#pasliste"/>
        <item algoitem="SI (som>prixtot) ALORS" code="6#som>prixtot">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="surpl PREND_LA_VALEUR som-prixtot" code="5#surpl#som-prixtot#pasliste"/>
            <item algoitem="AFFICHER &quot;nous vous devons :&quot;" code="4#nous vous devons :#0"/>
            <item algoitem="AFFICHER surpl" code="3#surpl#0#pasliste"/>
            <item algoitem="AFFICHER &quot;€&quot;" code="4#€#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="sup PREND_LA_VALEUR 0" code="5#sup#0#pasliste"/>
        <item algoitem="TANT_QUE (surpl>=10) FAIRE" code="15#surpl>=10">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="surpl PREND_LA_VALEUR surpl-10" code="5#surpl#surpl-10#pasliste"/>
            <item algoitem="sup PREND_LA_VALEUR sup+1" code="5#sup#sup+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Ont vous doit &quot;" code="4#Ont vous doit #0"/>
        <item algoitem="AFFICHER sup" code="3#sup#0#pasliste"/>
        <item algoitem="AFFICHER &quot;billets de 10€&quot;" code="4#billets de 10€#1"/>
        <item algoitem="AFFICHER surpl" code="3#surpl#0#pasliste"/>
        <item algoitem="sup PREND_LA_VALEUR 0" code="5#sup#0#pasliste"/>
        <item algoitem="TANT_QUE (surpl&lt;=10) FAIRE" code="15#surpl&lt;=10">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="surpl PREND_LA_VALEUR surpl-5" code="5#surpl#surpl-5#pasliste"/>
            <item algoitem="sup PREND_LA_VALEUR sup+1" code="5#sup#sup+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Ont vous doit &quot;" code="4#Ont vous doit #0"/>
        <item algoitem="AFFICHER sup" code="3#sup#0#pasliste"/>
        <item algoitem="AFFICHER &quot;billets de 5€&quot;" code="4#billets de 5€#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
