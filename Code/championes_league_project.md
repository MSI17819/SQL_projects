### Introduction
---

Championes League is for sure a Holly Grail for football teams, in terms of prestige and money. Player, coach, sport director and clubs in each year want to be in one of dozens apperance in UEFA competition. The competitions has a great and long history beginning from 1955 as Euuropean Cup and after 1992 the name estalisished well know right now UEFA Champions League. In different season, the competition format was various, including season 2024/2025 with new rules. The competiotn has a great history of teams, players and clubs so lets make a focal point this history. Show more UEFA Championes League as history proces, with Europe broken into two camp the Western and Eastern. After 1947 Iron curtain split continent into two, Wester Block with most of Wester European coutries and German as RFN and Eastern Block with middle and Eastern coutries and secound part of German the eastern twin for RFN a NRD country. The coutries lay east from NRD like Poland, CzechSlowakian (in that time), Hungary, Bulgaria, Romonia were incorporate to ZSRR area of influence. The Western Block was more or less a free world block with all personal and economic freedom for citizens. Here I start our journey with history and Championes League.

### Assumptions
---

In my analysis I consider only CM (Championes League) seasons from 1991/1992 to 2023/2024, so I do not include a time when competitions have different forma and name. I took an end of December 1991 (25 December 1991) as date when the ZSRR was formally dissolved by the fact of dimission Mr. Michaił Gorbaczow. Split between two block Easen and Western was formaly ended (formaly yes, but this split is still present at now days).

### Skill and technique
---

To conduct this analysis, I used:
- MySQL – the core of my analysis, to extract meaningful insights from the database.
- DBeaver – the database management client.
- Visual Studio Code – mainly to write a Python scritp for extract ANSII sytle table. I used *prettytable* Python library.
- Git & GitHub – essential for sharing SQL scripts, and tracking project progress.
- Power BI – data visualization, transforming SQL-queries data into insightful charts.

### The Analysis
---
Let's start from take a simple question about how many times each team present in CM competition was in four stages:
- round 1 of 16
- quater final
- semi final
- final

This information give essentsial insight to know team name, team city and country with most apperance in each stage.

Table 1. Team with the most apperance in round 1 of 16.
```
+--------------------------+--------------+-----------------+-----------------+
|        team_name         | country_name |    city_name    | count_team_name |
+--------------------------+--------------+-----------------+-----------------+
|       Real Madrid        |    Spain     |      Madrid     |        21       |
|     FC Bayern Munich     |   Germany    |      Munich     |        20       |
|       FC Barcelona       |    Spain     |    Barcelona    |        18       |
|       Chelsea F.C.       |   England    |      London     |        17       |
|       Arsenal F.C.       |   England    |      London     |        15       |
|         FC Porto         |   Portugal   |      Porto      |        14       |
|      Juventus F.C.       |    Italy     |      Turin      |        13       |
|  Manchester United F.C.  |   England    |    Manchester   |        12       |
| Paris Saint-Germain F.C. |    France    |      Paris      |        12       |
|      Inter Mediolan      |    Italy     |      Milan      |        11       |
|      Olympique Lyon      |    France    |       Lyon      |        11       |
|        A.C. Milan        |    Italy     |      Milan      |        11       |
|      Liverpool F.C.      |   England    |    Liverpool    |        11       |
|   Manchester City F.C.   |   England    |    Manchester   |        11       |
|     Atletico Madrid      |    Spain     |      Madrid     |        10       |
|    Borussia Dortmund     |   Germany    |     Dortmund    |        9        |
|         AS Roma          |    Italy     |       Rome      |        7        |
|      FC Schalke 04       |   Germany    |  Gelsenkirchen  |        6        |
|        SL Benfica        |   Portugal   |      Lisbon     |        6        |
|    Tottenham Hotspur     |   England    |      London     |        5        |
|        Sevilla FC        |    Spain     |     Sevilla     |        5        |
|     Bayer Leverkusen     |   Germany    |    Leverkusen   |        5        |
|      PSV Eindhoven       | Netherlands  |    Eindhoven    |        5        |
|        SSC Napoli        |    Italy     |      Naples     |        5        |
|        AS Monaco         |    France    |     Monacco     |        4        |
|     Shakhtar Donetsk     |   Ukraine    |     Donetsk     |        4        |
|       Valencia CF        |    Spain     |     Valencia    |        4        |
|        RB Leipzig        |   Germany    |     Leipzig     |        4        |
|      Olympiacos SFP      |    Greece    |      Pireus     |        3        |
|      Ajax Amsterdam      | Netherlands  |    Amsterdam    |        3        |
|      Villarreal CF       |    Spain     |    Villarreal   |        3        |
|         FC Basel         | Switzerland  |      Basel      |        3        |
|  Zenit Saint Petersburg  |    Russia    |      Moscow     |        3        |
|       Celtic F.C.        |   Scotland   |     Glasgow     |        3        |
|     F.C. Copenhagen      |   Denmark    |    Copenhagen   |        2        |
|      Real Sociedad       |    Spain     |  San Sebastian  |        2        |
|      VfB Stuttgart       |   Germany    |    Stuttgart    |        2        |
|       CSKA Moscow        |    Russia    |      Moscow     |        2        |
|   Olympique Marseille    |    France    |    Marseille    |        2        |
|      Werder Bremen       |   Germany    |      Bremen     |        2        |
|       Sporting CP        |   Portugal   |      Lisbon     |        2        |
|        Lille OSC         |    France    |      Lille      |        2        |
|      Galatasaray SK      |    Turkey    |     Stambul     |        2        |
|       Atalanta BC        |    Italy     |     Bergamo     |        2        |
|        S.S. Lazio        |    Italy     |       Rome      |        2        |
|     Lokomotiv Moscow     |    Russia    |      Moscow     |        1        |
|      APOEL Nikosia       |    Cyprus    |     Nicosia     |        1        |
|   Deportivo La Coruna    |    Spain     |     A Coruna    |        1        |
|      Sparta Prague       |    Czech     |      Prague     |        1        |
|        Malaga CF         |    Spain     |      Malaga     |        1        |
|        Celta Vigo        |    Spain     |       Vigo      |        1        |
|       Rangers F.C.       |   Scotland   |     Glasgow     |        1        |
|    Girondins Bordeaux    |    France    |     Bordeaux    |        1        |
|      VfL Wolfsburg       |   Germany    |    Wolfsburg    |        1        |
|       Dynamo Kyiv        |   Ukraine    |       Kyiv      |        1        |
|         KAA Gent         |   Belgium    |       Gent      |        1        |
|      Leicester City      |   England    |    Leicester    |        1        |
|       Besiktas JK        |    Turkey    |     Stambul     |        1        |
|      ACF Fiorentina      |    Italy     |    Fiorentina   |        1        |
|      Fenerbahce SK       |    Turkey    |     Stambul     |        1        |
| Borussia Monchengladbach |   Germany    | Monchengladbach |        1        |
|     Panathinaikos AO     |    Greece    |      Athens     |        1        |
|    Red Bull Salzburg     |   Austria    |     Salzburg    |        1        |
|       Club Brugge        |   Belgium    |      Brugge     |        1        |
|   Eintracht Frankfurt    |   Germany    |    Frankfurt    |        1        |
+--------------------------+--------------+-----------------+-----------------+
```
If we look closer and take to consideration a city and coutry we have from old Sowiet block:
1) Shakhtar Donetsk - 4 times
2) RB Leipzig - 4 times
3) Zenit Saint Petersburg - 3 times
4) CSKA Moscow - 2 times
5) Lokomotiv Moscow - 1 time
6) Sparta Prague - 1 time
7) Dynamo Kyiv - 1 time
Total - 7 teams.

Take next step to quater-final and repeat proces one more time

Table 1. Team with the most apperance in quater final round.
```
+--------------------------+--------------+----------------+-----------------+
|        team_name         | country_name |   city_name    | count_team_name |
+--------------------------+--------------+----------------+-----------------+
|     FC Bayern Munich     |   Germany    |     Munich     |        22       |
|       Real Madrid        |    Spain     |     Madrid     |        20       |
|       FC Barcelona       |    Spain     |   Barcelona    |        19       |
|  Manchester United F.C.  |   England    |   Manchester   |        14       |
|      Juventus F.C.       |    Italy     |     Turin      |        12       |
|       Chelsea F.C.       |   England    |     London     |        11       |
|      Liverpool F.C.      |   England    |   Liverpool    |        9        |
| Paris Saint-Germain F.C. |    France    |     Paris      |        8        |
|        A.C. Milan        |    Italy     |     Milan      |        8        |
|   Manchester City F.C.   |   England    |   Manchester   |        8        |
|    Borussia Dortmund     |   Germany    |    Dortmund    |        8        |
|         FC Porto         |   Portugal   |     Porto      |        7        |
|       Arsenal F.C.       |   England    |     London     |        7        |
|      Inter Mediolan      |    Italy     |     Milan      |        7        |
|     Atletico Madrid      |    Spain     |     Madrid     |        7        |
|        SL Benfica        |   Portugal   |     Lisbon     |        6        |
|      Ajax Amsterdam      | Netherlands  |   Amsterdam    |        5        |
|      Olympique Lyon      |    France    |      Lyon      |        5        |
|       Valencia CF        |    Spain     |    Valencia    |        4        |
|      Villarreal CF       |    Spain     |   Villarreal   |        3        |
|   Deportivo La Coruna    |    Spain     |    A Coruna    |        3        |
|        AS Monaco         |    France    |    Monacco     |        3        |
|         AS Roma          |    Italy     |      Rome      |        3        |
|     Panathinaikos AO     |    Greece    |     Athens     |        2        |
|       Dynamo Kyiv        |   Ukraine    |      Kyiv      |        2        |
|        S.S. Lazio        |    Italy     |      Rome      |        2        |
|      Galatasaray SK      |    Turkey    |    Stambul     |        2        |
|      PSV Eindhoven       | Netherlands  |   Eindhoven    |        2        |
|      FC Schalke 04       |   Germany    | Gelsenkirchen  |        2        |
|    Tottenham Hotspur     |   England    |     London     |        2        |
|     Bayer Leverkusen     |   Germany    |   Leverkusen   |        2        |
|        AJ Auxerre        |    France    |    Auxerre     |        1        |
|       Rosenborg BK       |    Norway    |   Trondheim    |        1        |
|    Leeds United F.C.     |   England    |     Leeds      |        1        |
|    FC Kaiserslautern     |   Germany    | Kaiserslautern |        1        |
|      Olympiacos SFP      |    Greece    |     Pireus     |        1        |
|       Hajduk Split       |   Croatia    |     Split      |        1        |
|        FC Nantes         |    France    |     Nantes     |        1        |
|      Spartak Moscow      |    Russia    |     Moscow     |        1        |
|      Fenerbahce SK       |    Turkey    |    Stambul     |        1        |
|    Girondins Bordeaux    |    France    |    Bordeaux    |        1        |
|       CSKA Moscow        |    Russia    |     Moscow     |        1        |
|       Legia Warsaw       |    Poland    |     Warsaw     |        1        |
|     Shakhtar Donetsk     |   Ukraine    |    Donetsk     |        1        |
|   Olympique Marseille    |    France    |   Marseille    |        1        |
|      APOEL Nikosia       |    Cyprus    |    Nicosia     |        1        |
|        Malaga CF         |    Spain     |     Malaga     |        1        |
|      VfL Wolfsburg       |   Germany    |   Wolfsburg    |        1        |
|       IFK Goteborg       |    Sweden    |    Goteborg    |        1        |
|      Leicester City      |   England    |   Leicester    |        1        |
|        Sevilla FC        |    Spain     |    Sevilla     |        1        |
|       Atalanta BC        |    Italy     |    Bergamo     |        1        |
|        RB Leipzig        |   Germany    |    Leipzig     |        1        |
|        SSC Napoli        |    Italy     |     Naples     |        1        |
+--------------------------+--------------+----------------+-----------------+
```
Teams list from ZSSR block:
1) Dynamo Kyiv - 2 times
2) Spartak Moscow - 1 time
3) CSKA Moscow - 1 time
4) Legia Warsaw - 1 time
5) Shakhtar Donetsk - 1 time
6) RB Leipzig - 1 time
Total 6 teams

Lets analys semi final stage.

Table 3. Team with the most apperance in semi final round.
```
+--------------------------+--------------+---------------+-----------------+
|        team_name         | country_name |   city_name   | count_team_name |
+--------------------------+--------------+---------------+-----------------+
|       Real Madrid        |    Spain     |     Madrid    |        17       |
|     FC Bayern Munich     |   Germany    |     Munich    |        13       |
|       FC Barcelona       |    Spain     |   Barcelona   |        12       |
|       Chelsea F.C.       |   England    |     London    |        8        |
|        A.C. Milan        |    Italy     |     Milan     |        7        |
|      Juventus F.C.       |    Italy     |     Turin     |        7        |
|  Manchester United F.C.  |   England    |   Manchester  |        7        |
|      Liverpool F.C.      |   England    |   Liverpool   |        6        |
|        AS Monaco         |    France    |    Monacco    |        4        |
| Paris Saint-Germain F.C. |    France    |     Paris     |        4        |
|    Borussia Dortmund     |   Germany    |    Dortmund   |        4        |
|   Manchester City F.C.   |   England    |   Manchester  |        4        |
|      Ajax Amsterdam      | Netherlands  |   Amsterdam   |        3        |
|      Inter Mediolan      |    Italy     |     Milan     |        3        |
|     Atletico Madrid      |    Spain     |     Madrid    |        3        |
|         FC Porto         |   Portugal   |     Porto     |        2        |
|       Valencia CF        |    Spain     |    Valencia   |        2        |
|       Arsenal F.C.       |   England    |     London    |        2        |
|      Villarreal CF       |    Spain     |   Villarreal  |        2        |
|      Olympique Lyon      |    France    |      Lyon     |        2        |
|     Panathinaikos AO     |    Greece    |     Athens    |        1        |
|        FC Nantes         |    France    |     Nantes    |        1        |
|       Dynamo Kyiv        |   Ukraine    |      Kyiv     |        1        |
|    Leeds United F.C.     |   England    |     Leeds     |        1        |
|     Bayer Leverkusen     |   Germany    |   Leverkusen  |        1        |
|   Deportivo La Coruna    |    Spain     |    A Coruna   |        1        |
|      PSV Eindhoven       | Netherlands  |   Eindhoven   |        1        |
|      FC Schalke 04       |   Germany    | Gelsenkirchen |        1        |
|         AS Roma          |    Italy     |      Rome     |        1        |
|    Tottenham Hotspur     |   England    |     London    |        1        |
|        RB Leipzig        |   Germany    |    Leipzig    |        1        |
+--------------------------+--------------+---------------+-----------------+
```
Teams list from former ZSSR block:
1) Dynamo Kyiv - 1 time
2) RB Leipzig - 1 time

The last table with teams from final stage and winner table.



