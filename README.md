# Daten aus dem Forum der Zeitung 'Krone.at'
Details zu den Daten sind in dem Artikel [hier](https://www.linkedin.com/pulse/korrelierte-zacken-der-krone-andreas-windisch/) zu finden.
Gegenstand der Analyse ist eine von manchen Usern vermutete Auffaelligkeit in den Bewertungen von Forumsbeitraegen zu manchen Artikeln der Online-Plattform 'krone.at'.

## 1 Fragestellung
Bei dieser Analyse geht es darum, die Frage , ob es in den Foren zu manchen Artikeln der Online-Plattform krone.at, zu Manipulationen der Bewertungen der Forenbeitraege kommt. Dies wurde von einigen Forennutzern in den Raum gestellt.
Ich persoenlich bin nicht in diesem Forum aktiv und stehe dieser Frage neutral gegenueber. Um eine schnelle Einsicht zu erlangen, habe ich folgende Daten erhoben.

## 2 Daten
Daten zur Beantwortung dieser Fragestellung:   
- krone_comments_Jul_20_2018.txt   
- krone_comments_May_13_2018.txt   
- krone_forum.R   
- krone_likes_dislikes_Jul_20_2018.csv   
- krone_likes_dislikes_May_13_2018.csv   
- standard_likes_dislikes_Jul_20_2018.csv 
  
Die ersten beiden Dateien beinhalten die Kommentare zu den Krone-Artikeln vom 20. Juli 2018 und vom 13. Mai 2018. Diese Daten sind ungeordnet, werden nicht zur Analyse herangezogen, und stehen nur  der Vollstaendigkeit halber hier zur Verfuegung. Die Datei krone_forum.R erzeugt einfache line plots der likes/dislikes fuer den jeweiligen Artikel. Die csv Dateien beinhalten die positiven (likes) und negativen (dislikes) Bewertungen der jeweiligen Forenbeitraege.   
Folgende Artikel wurden zur Analyse herangezogen:   
- [Krone Artikel vom 20. Juli 2018](https://www.krone.at/1743023), Foren-User vermuten Manipulation   
- [Krone Artikel vom 13. Juli 2018](https://www.krone.at/1707120), Artikel zu aehnlichem Vorfall wie dem vom 20. Juli 2018, Foren-User vermuten keine Manipulation   
- [Standard Artikel vom 20. Juli 2018](https://derstandard.at/2000083855951/Mehrere-Verletzte-nach-Gewalttat-mit-Messer-in-Bus-in-Luebeck), Artikel zum selben Vorfall wie der erste Krone Artikel, dient zum Vergleich      
Alle Daten wurden von Hand eingegeben, was aufgrund der Tatsache dass diese Analyse weder wiederholt noch vertieft wird gerechtfertigt ist. Potentielle Fehler, die durch die haendische Eingabe entstehen koennen, beinflussen die Qualitaet dieser groben Analyse nicht.

## 3 Starke Korrelation zwischen Likes/Dislikes
In der Tat weist der Artikel der Krone vom 20. Juli 2018 eine starke Korrelation zwischen den Likes und Dislikes der Forenbeitraege auf. Eine solche Korrelation wurde weder im Forum des Vergleichsartikels vom 13. Mai 2018 in der Krone, noch in den Foren des Vergleichsartikels vom 20. Juli 2018 im Standard gefunden. Die Korrelationskoeffizienten zwischen Likes/Dislikes betragen 0.003 fuer den Standard Artikel, sowie -0.1 fuer den Krone Artikel aus dem Mai 2018, und 0.94 fuer den Krone Artikel vom 20. Juli 2018, fuer den die User Manipulation in den Raum gestellt haben. Dies ist in der Tat eine Auffaelligkeit die den Verdacht der User erhaertet.
```

