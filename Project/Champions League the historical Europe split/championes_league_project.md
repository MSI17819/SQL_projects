### Introduction
---

The Champions League is certainly the Holy Grail for football teams, in terms of prestige and money. Players, coaches, sporting directors and clubs every year want to be one of the dozens of participants and play in the UEFA competition. This competition has a glorious and long history, starting in 1955 as the European Cup, and after 1992 the competition adopted the now well-known name of the UEFA Champions League. The format of the competition has varied in different seasons, including the 2024/2025 season with new competition rules. The competition has a great history of teams, players and clubs, so let's make that history the focal point of this story. 
I want to show the Champions League as a historical process, not so much in terms of the history of goals scored, teams and players but, a history with Europe divided into two camps: west and east.

Let's start, then, from the beginning. After 1947, the Iron Curtain divided the continent into two parts, a western bloc with most of Western Europe and part of Germany as RFN, and an eastern bloc with central and eastern European countries and the other part of Germany, the eastern twin of RFN, the NRD. Countries to the east of the NRD, such as Poland, Czechoslovakia (at the time), Hungary, Bulgaria, Romania were included in the sphere of influence of the ZSSR. The western bloc was more or less a bloc with full personal and economic freedom for its citizens on the other hand the eastern bloc was identified with the sovereignty and control of the ZSSR.
For the sake of clarity, I have taken the date of the end of December 1991 (25 December 1991) when the ZSSR was formally dissolved by Mikhail Gorbachev as the definitive end of the Western and Eastern blocs. It was then that the split formally ended, but analysing the latest political-economic and football matters, the split is still present today.

For a better understanding of the topic, I have included below a picture of a map of Europe with the dividing line for the western and eastern parts marked.

![image info](https://github.com/MSI17819/SQL_projects/blob/main/Project/Champions%20League%20the%20historical%20Europe%20split/ion_curtain_europe.jpeg)
[*Map source*](https://imgur.com/map-of-europe-following-world-war-ii-3120x2038-tr17uEy)

### Assumptions
---
In my analysis I only consider the CM (Champions League) seasons from 1991/1992 to 2023/2024, so I do not include the period when the competition had a different form and name.  

### Skill and technique
---
To conduct this analysis, I used:
- MySQL – the core of my analysis, to extract meaningful insights from the database.
- DBeaver – the database management client.
- Python - mainly transformation of sql query results in csv form.
- Visual Studio Code – mainly to write a Python scritp for extract ANSII style table. I used *prettytable* Python library.
- Git & GitHub – essential for sharing SQL scripts, and tracking progress.
- Power BI – data visualization, transforming SQL-queries data into insightful charts.

### The Analysis
---
Let's start from take a simple question about how many times each team present in CM competition was in four stages:
- round 1 of 16
- quater final
- semi final
- final

This information give essentsial insight to: team name, team city and country with most apperance in each stage.

#### **Round 1 of 16**

*Table 1.* Teams with the most apperance in round 1 of 16.
```
+--------------------------+--------------+-----------------+----------------+
|        team_name         | country_name |    city_name    | team_apperance |
+--------------------------+--------------+-----------------+----------------+
|       Real Madrid        |    Spain     |      Madrid     |       21       |
|     FC Bayern Munich     |   Germany    |      Munich     |       20       |
|       FC Barcelona       |    Spain     |    Barcelona    |       18       |
|       Chelsea F.C.       |   England    |      London     |       17       |
|       Arsenal F.C.       |   England    |      London     |       15       |
|         FC Porto         |   Portugal   |      Porto      |       14       |
|      Juventus F.C.       |    Italy     |      Turin      |       13       |
|  Manchester United F.C.  |   England    |    Manchester   |       12       |
| Paris Saint-Germain F.C. |    France    |      Paris      |       12       |
|      Inter Mediolan      |    Italy     |      Milan      |       11       |
|      Olympique Lyon      |    France    |       Lyon      |       11       |
|        A.C. Milan        |    Italy     |      Milan      |       11       |
|      Liverpool F.C.      |   England    |    Liverpool    |       11       |
|   Manchester City F.C.   |   England    |    Manchester   |       11       |
|     Atletico Madrid      |    Spain     |      Madrid     |       10       |
|    Borussia Dortmund     |   Germany    |     Dortmund    |       9        |
|         AS Roma          |    Italy     |       Rome      |       7        |
|      FC Schalke 04       |   Germany    |  Gelsenkirchen  |       6        |
|        SL Benfica        |   Portugal   |      Lisbon     |       6        |
|    Tottenham Hotspur     |   England    |      London     |       5        |
|        Sevilla FC        |    Spain     |     Sevilla     |       5        |
|     Bayer Leverkusen     |   Germany    |    Leverkusen   |       5        |
|      PSV Eindhoven       | Netherlands  |    Eindhoven    |       5        |
|        SSC Napoli        |    Italy     |      Naples     |       5        |
|        AS Monaco         |    France    |     Monacco     |       4        |
|     Shakhtar Donetsk     |   Ukraine    |     Donetsk     |       4        |
|       Valencia CF        |    Spain     |     Valencia    |       4        |
|        RB Leipzig        |   Germany    |     Leipzig     |       4        |
|      Olympiacos SFP      |    Greece    |      Pireus     |       3        |
|      Ajax Amsterdam      | Netherlands  |    Amsterdam    |       3        |
|      Villarreal CF       |    Spain     |    Villarreal   |       3        |
|         FC Basel         | Switzerland  |      Basel      |       3        |
|  Zenit Saint Petersburg  |    Russia    |      Moscow     |       3        |
|       Celtic F.C.        |   Scotland   |     Glasgow     |       3        |
|     F.C. Copenhagen      |   Denmark    |    Copenhagen   |       2        |
|      Real Sociedad       |    Spain     |  San Sebastian  |       2        |
|      VfB Stuttgart       |   Germany    |    Stuttgart    |       2        |
|       CSKA Moscow        |    Russia    |      Moscow     |       2        |
|   Olympique Marseille    |    France    |    Marseille    |       2        |
|      Werder Bremen       |   Germany    |      Bremen     |       2        |
|       Sporting CP        |   Portugal   |      Lisbon     |       2        |
|        Lille OSC         |    France    |      Lille      |       2        |
|      Galatasaray SK      |    Turkey    |     Stambul     |       2        |
|       Atalanta BC        |    Italy     |     Bergamo     |       2        |
|        S.S. Lazio        |    Italy     |       Rome      |       2        |
|     Lokomotiv Moscow     |    Russia    |      Moscow     |       1        |
|      APOEL Nikosia       |    Cyprus    |     Nicosia     |       1        |
|   Deportivo La Coruna    |    Spain     |     A Coruna    |       1        |
|      Sparta Prague       |    Czech     |      Prague     |       1        |
|        Malaga CF         |    Spain     |      Malaga     |       1        |
|        Celta Vigo        |    Spain     |       Vigo      |       1        |
|       Rangers F.C.       |   Scotland   |     Glasgow     |       1        |
|    Girondins Bordeaux    |    France    |     Bordeaux    |       1        |
|      VfL Wolfsburg       |   Germany    |    Wolfsburg    |       1        |
|       Dynamo Kyiv        |   Ukraine    |       Kyiv      |       1        |
|         KAA Gent         |   Belgium    |      Ghent      |       1        |
|      Leicester City      |   England    |    Leicester    |       1        |
|       Besiktas JK        |    Turkey    |     Stambul     |       1        |
|      ACF Fiorentina      |    Italy     |     Florence    |       1        |
|      Fenerbahce SK       |    Turkey    |     Stambul     |       1        |
| Borussia Monchengladbach |   Germany    | Monchengladbach |       1        |
|     Panathinaikos AO     |    Greece    |      Athens     |       1        |
|    Red Bull Salzburg     |   Austria    |     Salzburg    |       1        |
|       Club Brugge        |   Belgium    |      Brugge     |       1        |
|   Eintracht Frankfurt    |   Germany    |    Frankfurt    |       1        |
+--------------------------+--------------+-----------------+----------------+
```
The table above shows all the teams that featured in the 1 of 16 stage CM, I will be most interested in which teams were part of the Eastern Bloc. This will be facilitated by using the longitude values available in the [*teams*](https://github.com/MSI17819/SQL_projects/blob/main/Dataset/Champions%20League/teams.csv) table.

The geographical coordinates are given in a two-number system, where the longitude takes on negative values when moving west of the 0 meridian. After a slight modification of the query, the result is in the table below. 
I took the dividing line between the two blocks as the 12th degree of east longitude, so the eastern block is the cities to the right of this value and the western block is the teams from the countries to the left of this geographical degree.

I filtered the data and excluded Greece, Turkey, Cyprus, Italy, Croatia, Denmark and part of Austria because these countries were not part of the Soviet Union's sphere of influence, but were nevertheless included in queries because they lay to the right of the 12th meridian. Well the split is not perfect. This can be clearly seen on the map.

*Table 2.* Teams with the most apperance in round 1 of 16 belong to Sowieth Union Block.
```
+------------------------+--------------+-----------+----------------+
|       team_name        | country_name | city_name | team_apperance |
+------------------------+--------------+-----------+----------------+
|    Shakhtar Donetsk    |   Ukraine    |  Donetsk  |       4        |
|       RB Leipzig       |   Germany    |  Leipzig  |       4        |
| Zenit Saint Petersburg |    Russia    |   Moscow  |       3        |
|      CSKA Moscow       |    Russia    |   Moscow  |       2        |
|     Sparta Prague      |    Czech     |   Prague  |       1        |
|      Dynamo Kyiv       |   Ukraine    |    Kyiv   |       1        |
|    Lokomotiv Moscow    |    Russia    |   Moscow  |       1        |
+------------------------+--------------+-----------+----------------+
```
#### **Quater final stage**

In the next step I took the quater-final stage and repeated the process again.

*Table 3.* Team with the most apperance in quater final round.
```
+--------------------------+--------------+----------------+----------------+
|        team_name         | country_name |   city_name    | team_apperance |
+--------------------------+--------------+----------------+----------------+
|     FC Bayern Munich     |   Germany    |     Munich     |       22       |
|       Real Madrid        |    Spain     |     Madrid     |       20       |
|       FC Barcelona       |    Spain     |   Barcelona    |       19       |
|  Manchester United F.C.  |   England    |   Manchester   |       14       |
|      Juventus F.C.       |    Italy     |     Turin      |       12       |
|       Chelsea F.C.       |   England    |     London     |       11       |
|      Liverpool F.C.      |   England    |   Liverpool    |       9        |
| Paris Saint-Germain F.C. |    France    |     Paris      |       8        |
|        A.C. Milan        |    Italy     |     Milan      |       8        |
|   Manchester City F.C.   |   England    |   Manchester   |       8        |
|    Borussia Dortmund     |   Germany    |    Dortmund    |       8        |
|         FC Porto         |   Portugal   |     Porto      |       7        |
|       Arsenal F.C.       |   England    |     London     |       7        |
|      Inter Mediolan      |    Italy     |     Milan      |       7        |
|     Atletico Madrid      |    Spain     |     Madrid     |       7        |
|        SL Benfica        |   Portugal   |     Lisbon     |       6        |
|      Ajax Amsterdam      | Netherlands  |   Amsterdam    |       5        |
|      Olympique Lyon      |    France    |      Lyon      |       5        |
|       Valencia CF        |    Spain     |    Valencia    |       4        |
|      Villarreal CF       |    Spain     |   Villarreal   |       3        |
|   Deportivo La Coruna    |    Spain     |    A Coruna    |       3        |
|        AS Monaco         |    France    |    Monacco     |       3        |
|         AS Roma          |    Italy     |      Rome      |       3        |
|     Panathinaikos AO     |    Greece    |     Athens     |       2        |
|       Dynamo Kyiv        |   Ukraine    |      Kyiv      |       2        |
|        S.S. Lazio        |    Italy     |      Rome      |       2        |
|      Galatasaray SK      |    Turkey    |    Stambul     |       2        |
|      PSV Eindhoven       | Netherlands  |   Eindhoven    |       2        |
|      FC Schalke 04       |   Germany    | Gelsenkirchen  |       2        |
|    Tottenham Hotspur     |   England    |     London     |       2        |
|     Bayer Leverkusen     |   Germany    |   Leverkusen   |       2        |
|        AJ Auxerre        |    France    |    Auxerre     |       1        |
|       Rosenborg BK       |    Norway    |   Trondheim    |       1        |
|    Leeds United F.C.     |   England    |     Leeds      |       1        |
|    FC Kaiserslautern     |   Germany    | Kaiserslautern |       1        |
|      Olympiacos SFP      |    Greece    |     Pireus     |       1        |
|       Hajduk Split       |   Croatia    |     Split      |       1        |
|        FC Nantes         |    France    |     Nantes     |       1        |
|      Spartak Moscow      |    Russia    |     Moscow     |       1        |
|      Fenerbahce SK       |    Turkey    |    Stambul     |       1        |
|    Girondins Bordeaux    |    France    |    Bordeaux    |       1        |
|       CSKA Moscow        |    Russia    |     Moscow     |       1        |
|       Legia Warsaw       |    Poland    |     Warsaw     |       1        |
|     Shakhtar Donetsk     |   Ukraine    |    Donetsk     |       1        |
|   Olympique Marseille    |    France    |   Marseille    |       1        |
|      APOEL Nikosia       |    Cyprus    |    Nicosia     |       1        |
|        Malaga CF         |    Spain     |     Malaga     |       1        |
|      VfL Wolfsburg       |   Germany    |   Wolfsburg    |       1        |
|       IFK Goteborg       |    Sweden    |    Goteborg    |       1        |
|      Leicester City      |   England    |   Leicester    |       1        |
|        Sevilla FC        |    Spain     |    Sevilla     |       1        |
|       Atalanta BC        |    Italy     |    Bergamo     |       1        |
|        RB Leipzig        |   Germany    |    Leipzig     |       1        |
|        SSC Napoli        |    Italy     |     Naples     |       1        |
+--------------------------+--------------+----------------+----------------+
```
The same after filtering and excluding the countries I mentioned above the table looks as follows.

*Tabel 4.* Teams with the most apperance in quater final round belong to Sowieth Union Block.
```
+------------------+--------------+-----------+----------------+
|    team_name     | country_name | city_name | team_apperance |
+------------------+--------------+-----------+----------------+
|   Dynamo Kyiv    |   Ukraine    |    Kyiv   |       2        |
|   CSKA Moscow    |    Russia    |   Moscow  |       1        |
|  Spartak Moscow  |    Russia    |   Moscow  |       1        |
|   Legia Warsaw   |    Poland    |   Warsaw  |       1        |
| Shakhtar Donetsk |   Ukraine    |  Donetsk  |       1        |
|    RB Leipzig    |   Germany    |  Leipzig  |       1        |
+------------------+--------------+-----------+----------------+
```
Finally lets analysed semi final stage.

*Table 5.* Team with the most apperance in semi final round.
```
+--------------------------+--------------+---------------+----------------+
|        team_name         | country_name |   city_name   | team_apperance |
+--------------------------+--------------+---------------+----------------+
|       Real Madrid        |    Spain     |     Madrid    |       17       |
|     FC Bayern Munich     |   Germany    |     Munich    |       13       |
|       FC Barcelona       |    Spain     |   Barcelona   |       12       |
|       Chelsea F.C.       |   England    |     London    |       8        |
|        A.C. Milan        |    Italy     |     Milan     |       7        |
|      Juventus F.C.       |    Italy     |     Turin     |       7        |
|  Manchester United F.C.  |   England    |   Manchester  |       7        |
|      Liverpool F.C.      |   England    |   Liverpool   |       6        |
|        AS Monaco         |    France    |    Monacco    |       4        |
| Paris Saint-Germain F.C. |    France    |     Paris     |       4        |
|    Borussia Dortmund     |   Germany    |    Dortmund   |       4        |
|   Manchester City F.C.   |   England    |   Manchester  |       4        |
|      Ajax Amsterdam      | Netherlands  |   Amsterdam   |       3        |
|      Inter Mediolan      |    Italy     |     Milan     |       3        |
|     Atletico Madrid      |    Spain     |     Madrid    |       3        |
|         FC Porto         |   Portugal   |     Porto     |       2        |
|       Valencia CF        |    Spain     |    Valencia   |       2        |
|       Arsenal F.C.       |   England    |     London    |       2        |
|      Villarreal CF       |    Spain     |   Villarreal  |       2        |
|      Olympique Lyon      |    France    |      Lyon     |       2        |
|     Panathinaikos AO     |    Greece    |     Athens    |       1        |
|        FC Nantes         |    France    |     Nantes    |       1        |
|       Dynamo Kyiv        |   Ukraine    |      Kyiv     |       1        |
|    Leeds United F.C.     |   England    |     Leeds     |       1        |
|     Bayer Leverkusen     |   Germany    |   Leverkusen  |       1        |
|   Deportivo La Coruna    |    Spain     |    A Coruna   |       1        |
|      PSV Eindhoven       | Netherlands  |   Eindhoven   |       1        |
|      FC Schalke 04       |   Germany    | Gelsenkirchen |       1        |
|         AS Roma          |    Italy     |      Rome     |       1        |
|    Tottenham Hotspur     |   England    |     London    |       1        |
|        RB Leipzig        |   Germany    |    Leipzig    |       1        |
+--------------------------+--------------+---------------+----------------+
```
Below data after filtering.

*Table 6.* Teams with the most apperance in semi final round belong to ZSRR Block.
```
+-------------+--------------+-----------+----------------+
|  team_name  | country_name | city_name | team_apperance |
+-------------+--------------+-----------+----------------+
| Dynamo Kyiv |   Ukraine    |    Kyiv   |       1        |
|  RB Leipzig |   Germany    |  Leipzig  |       1        |
+-------------+--------------+-----------+----------------+
```
As expected, no team from the part of the Soviet sphere of influence reached the final.

Finally, I added the year of the CM season and the team members. Dynamo Kyiv, when they reached the semi-finals, had in my opinion the best team in the club's history with great coach Valeriy Lobanovskyi, Andriy Shevchenko, Serhiy Rebrov, Oleh Luzhny,  Kakha Kaladze etc. RB Leipzig, on the other hand, showed that good management, the idea for the club and the money invested give, a semi-final level after only 11 years started from scratch. Plus the team playing style as the main sponsor logo, i.e. energetic and full of football transitional moments with quality players Dani Olmo, Ibrahima Konate, Christopher Nkunku or Dayot Upamecano.

*Tabel 7.* Squads, seasons year for two teams who reached semi final from historical Sowiet Union area of influence.

```
+-------------+-------------+------------------------+-----------------+
| season_year |  team_name  |         player         | player_position |
+-------------+-------------+------------------------+-----------------+
|  1998/1999  | Dynamo Kyiv |     Artem Yashkin      |        MF       |
|  1998/1999  | Dynamo Kyiv |   Vladyslav Vashchuk   |        DF       |
|  1998/1999  | Dynamo Kyiv | Oleksandr Shovkovskiy  |        GK       |
|  1998/1999  | Dynamo Kyiv |   Andriy Shevchenko    |        FW       |
|  1998/1999  | Dynamo Kyiv |     Serhiy Rebrov      |      FW,MF      |
|  1998/1999  | Dynamo Kyiv |   Dmytro Mykhaylenko   |        MF       |
|  1998/1999  | Dynamo Kyiv |      Oleh Luzhny       |        DF       |
|  1998/1999  | Dynamo Kyiv |  Oleksandr Kyryukhin   |      DF,MF      |
|  1998/1999  | Dynamo Kyiv |   Vitaliy Kosovskyi    |        MF       |
|  1998/1999  | Dynamo Kyiv |   Sergei Kormiltsev    |      FW,MF      |
|  1998/1999  | Dynamo Kyiv |    Serhiy Konovalov    |        MF       |
|  1998/1999  | Dynamo Kyiv | Alyaksandr Khatskevich |        MF       |
|  1998/1999  | Dynamo Kyiv |     Vasyl Kardash      |      DF,MF      |
|  1998/1999  | Dynamo Kyiv |   Yuriy Kalitvintsev   |        MF       |
|  1998/1999  | Dynamo Kyiv |     Kakha Kaladze      |      DF,MF      |
|  1998/1999  | Dynamo Kyiv |      Andriy Husin      |        MF       |
|  1998/1999  | Dynamo Kyiv |   Oleksandr Holovko    |        DF       |
|  1998/1999  | Dynamo Kyiv |  Aleksei Gerasimenko   |      FW,MF      |
|  1998/1999  | Dynamo Kyiv |     Serhiy Fedorov     |        DF       |
|  1998/1999  | Dynamo Kyiv |    Yuriy Dmytrulin     |        DF       |
|  1998/1999  | Dynamo Kyiv | Valyantsin Byalkevich  |        MF       |
|  2019/2020  |  RB Leipzig |      Timo Werner       |      FW,MF      |
|  2019/2020  |  RB Leipzig |    Dayot Upamecano     |        DF       |
|  2019/2020  |  RB Leipzig |     Patrik Schick      |        FW       |
|  2019/2020  |  RB Leipzig |    Marcelo Saracchi    |        DF       |
|  2019/2020  |  RB Leipzig |    Marcel Sabitzer     |      MF,FW      |
|  2019/2020  |  RB Leipzig |     Yussuf Poulsen     |      FW,MF      |
|  2019/2020  |  RB Leipzig |      Willi Orban       |        DF       |
|  2019/2020  |  RB Leipzig |       Dani Olmo        |        MF       |
|  2019/2020  |  RB Leipzig |   Christopher Nkunku   |      FW,MF      |
|  2019/2020  |  RB Leipzig |       Yvon Mvogo       |        GK       |
|  2019/2020  |  RB Leipzig |     Nordi Mukiele      |        DF       |
|  2019/2020  |  RB Leipzig |    Ademola Lookman     |        FW       |
|  2019/2020  |  RB Leipzig |     Konrad Laimer      |      MF,DF      |
|  2019/2020  |  RB Leipzig |    Ibrahima Konate     |        DF       |
|  2019/2020  |  RB Leipzig |   Lukas Klostermann    |        DF       |
|  2019/2020  |  RB Leipzig |      Kevin Kampl       |        MF       |
|  2019/2020  |  RB Leipzig |   Marcel Halstenberg   |        DF       |
|  2019/2020  |  RB Leipzig |     Amadou Haidara     |      MF,FW      |
|  2019/2020  |  RB Leipzig |     Peter Gulacsi      |        GK       |
|  2019/2020  |  RB Leipzig |     Emil Forsberg      |      MF,FW      |
|  2019/2020  |  RB Leipzig |      Diego Demme       |        MF       |
|  2019/2020  |  RB Leipzig |     Matheus Cunha      |        FW       |
|  2019/2020  |  RB Leipzig |        Angelino        |      DF,MF      |
|  2019/2020  |  RB Leipzig |      Ethan Ampadu      |        DF       |
|  2019/2020  |  RB Leipzig |      Tyler Adams       |      MF,DF      |
+-------------+-------------+------------------------+-----------------+
```


