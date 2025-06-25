### Introduction
---

The Champions League is certainly the Holy Grail for football teams, in terms of prestige and money. Players, coaches, sporting directors and clubs every year want to be one of the dozens of participants and play in the UEFA competition. This competition has a glorious and long history, starting in 1955 as the European Cup, and after 1992 the competition adopted the now well-known name of the UEFA Champions League. The format of the competition has varied in different seasons, including the 2024/2025 season with new competition rules. The competition has a great history of teams, players and clubs, so let's make that history the focal point of this story. 
I want to show the Champions League as a historical process, not so much in terms of the history of goals scored, teams and players but, a history with Europe divided into two camps: west and east.

Let's start, then, from the beginning. After 1947, the Iron Curtain divided the continent into two parts, a western bloc with most of Western Europe and part of Germany as RFN, and an eastern bloc with central and eastern European countries and the other part of Germany, the eastern twin of RFN, the NRD. Countries to the east of the NRD, such as Poland, Czechoslovakia (at the time), Hungary, Bulgaria, Romania were included in the sphere of influence of the ZSSR. The western bloc was more or less a bloc with full personal and economic freedom for its citizens on the other hand the eastern bloc was identified with the sovereignty and control of the ZSSR.
For the sake of clarity, I have taken the date of the end of December 1991 (25 December 1991) when the ZSSR was formally dissolved by Mikhail Gorbachev as the definitive end of the Western and Eastern blocs. It was then that the split formally ended, but analysing the latest political-economic and football, the split is still present today.

For a better understanding of the topic, I have included below a picture of a map of Europe with the dividing line for the western and eastern parts marked.

![image info](https://github.com/MSI17819/SQL_projects/blob/main/Code/Champions%20League/ion_curtain_europe.jpeg)
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

Table 1. Teams with the most apperance in round 1 of 16.
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
The table above shows all the teams that featured in the 1 of 16 stage CM, I will be most interested in which teams were part of the Eastern Bloc. This will be facilitated by using the longitude filtering available in the [*teams*](https://github.com/MSI17819/SQL_projects/blob/main/Dataset/Champions%20League/teams.csv) table.

The geographical coordinates are given in a two-number system, where the longitude takes on negative values when moving west of the 0 meridian. After little query modification and result is table below. 
I took the dividing line between the two blocks as the 14th degree of east longitude, so the eastern block is the cities to the right of this value and the western block is the teams from the countries to the left of this geographical degree.

Table 2. Teams with the most apperance in round 1 of 16 belong to Sowieth Union Block.

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



