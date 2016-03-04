
export PATH=${PATH}:/usr/local/mysql/bin/
mysql -u db70 -p -h puccini.cs.lth.se db70

mysql> use db70
mysql> show tables
mysql> select firstName, lastname from Students;
+-----------+-------------+
| firstName | lastname    |
+-----------+-------------+
| Henrik    | Berg        |
| Filip     | Persson     |
| Ulrika    | Jonsson     |
| Bo        | Ek          |
| Eva       | Hjort       |
| Niklas    | Andersson   |
| Maria     | Andersson   |
| Bo        | Ek          |
| Caroline  | Olsson      |
| Marie     | Persson     |
| Joakim    | Hall        |
| Martin    | Alm         |
| Susanne   | Dahl        |
| Christian | Wallman     |
| Torbjörn  | Modig       |
| Johan     | Brattberg   |
| Ola       | Nilsson     |
| Jenny     | Lundin      |
| Tobias    | Enberg      |
| Johan     | Lind        |
| Lotta     | Bergman     |
| Anders    | Magnusson   |
| Erik      | Andersson   |
| Lars      | Molin       |
| Henrik    | Gustavsson  |
| Daniel    | Ahlman      |
| Märit     | Aspegren    |
| Erik      | Andersson   |
| Magnus    | Nilsson     |
| Sofia     | Kjellberg   |
| Henrik    | Hult        |
| Per-Erik  | Pettersson  |
| Peter     | Solberg     |
| Karin     | Östberg     |
| Helena    | Troberg     |
| Eva       | Nilsson     |
| Karolin   | Ek          |
| Jonathan  | Jönsson     |
| Fredrik   | Ryd         |
| Eva       | Alm         |
| David     | Carlsson    |
| Johan     | Olsson      |
| Magnus    | Pettersson  |
| Jakob     | Malmberg    |
| Andreas   | Molin       |
| Roger     | Brorsson    |
| Daniel    | Axelsson    |
| Mats      | Wikström    |
| John      | Lind        |
| Tina      | Lööf        |
| Anna      | Johansson   |
| Patrik    | Lundh       |
| Patrik    | Ohlsson     |
| Magnus    | Strömgren   |
| Joakim    | Nilsson     |
| Ylva      | Jacobsson   |
| Elaine    | Robertson   |
| Bo        | Ek          |
| Conny     | Modig       |
| Mikael    | Nilsson     |
| Birgit    | Ewesson     |
| Filip     | Gustavsson  |
| Lotta     | Emanuelsson |
| Magnus    | Hultgren    |
| Lisa      | Berg        |
| Anna      | Johansson   |
| Håkan     | Mossgren    |
| Axel      | Nord        |
| Anna      | Nyström     |
| Anders    | Olsson      |
| Frida     | Weidel      |
| Maria     | Nordman     |
+-----------+-------------+
72 rows in set (0.03 sec)

mysql> select firstname, lastname from students order by firstname;
+-----------+-------------+
| firstname | lastname    |
+-----------+-------------+
| Anders    | Magnusson   |
| Anders    | Olsson      |
| Andreas   | Molin       |
| Anna      | Nyström     |
| Anna      | Johansson   |
| Anna      | Johansson   |
| Axel      | Nord        |
| Birgit    | Ewesson     |
| Bo        | Ek          |
| Bo        | Ek          |
| Bo        | Ek          |
| Caroline  | Olsson      |
| Christian | Wallman     |
| Conny     | Modig       |
| Daniel    | Ahlman      |
| Daniel    | Axelsson    |
| David     | Carlsson    |
| Elaine    | Robertson   |
| Erik      | Andersson   |
| Erik      | Andersson   |
| Eva       | Alm         |
| Eva       | Hjort       |
| Eva       | Nilsson     |
| Filip     | Persson     |
| Filip     | Gustavsson  |
| Fredrik   | Ryd         |
| Frida     | Weidel      |
| Helena    | Troberg     |
| Henrik    | Gustavsson  |
| Henrik    | Berg        |
| Henrik    | Hult        |
| Håkan     | Mossgren    |
| Jakob     | Malmberg    |
| Jenny     | Lundin      |
| Joakim    | Hall        |
| Joakim    | Nilsson     |
| Johan     | Olsson      |
| Johan     | Lind        |
| Johan     | Brattberg   |
| John      | Lind        |
| Jonathan  | Jönsson     |
| Karin     | Östberg     |
| Karolin   | Ek          |
| Lars      | Molin       |
| Lisa      | Berg        |
| Lotta     | Emanuelsson |
| Lotta     | Bergman     |
| Magnus    | Hultgren    |
| Magnus    | Nilsson     |
| Magnus    | Strömgren   |
| Magnus    | Pettersson  |
| Maria     | Andersson   |
| Maria     | Nordman     |
| Marie     | Persson     |
| Martin    | Alm         |
| Mats      | Wikström    |
| Mikael    | Nilsson     |
| Märit     | Aspegren    |
| Niklas    | Andersson   |
| Ola       | Nilsson     |
| Patrik    | Lundh       |
| Patrik    | Ohlsson     |
| Per-Erik  | Pettersson  |
| Peter     | Solberg     |
| Roger     | Brorsson    |
| Sofia     | Kjellberg   |
| Susanne   | Dahl        |
| Tina      | Lööf        |
| Tobias    | Enberg      |
| Torbjörn  | Modig       |
| Ulrika    | Jonsson     |
| Ylva      | Jacobsson   |
+-----------+-------------+
72 rows in set (0.03 sec)

mysql> select firstname, lastname from students order by lastname;
+-----------+-------------+
| firstname | lastname    |
+-----------+-------------+
| Daniel    | Ahlman      |
| Martin    | Alm         |
| Eva       | Alm         |
| Erik      | Andersson   |
| Erik      | Andersson   |
| Maria     | Andersson   |
| Niklas    | Andersson   |
| Märit     | Aspegren    |
| Daniel    | Axelsson    |
| Lisa      | Berg        |
| Henrik    | Berg        |
| Lotta     | Bergman     |
| Johan     | Brattberg   |
| Roger     | Brorsson    |
| David     | Carlsson    |
| Susanne   | Dahl        |
| Bo        | Ek          |
| Karolin   | Ek          |
| Bo        | Ek          |
| Bo        | Ek          |
| Lotta     | Emanuelsson |
| Tobias    | Enberg      |
| Birgit    | Ewesson     |
| Henrik    | Gustavsson  |
| Filip     | Gustavsson  |
| Joakim    | Hall        |
| Eva       | Hjort       |
| Henrik    | Hult        |
| Magnus    | Hultgren    |
| Ylva      | Jacobsson   |
| Anna      | Johansson   |
| Anna      | Johansson   |
| Ulrika    | Jonsson     |
| Jonathan  | Jönsson     |
| Sofia     | Kjellberg   |
| John      | Lind        |
| Johan     | Lind        |
| Patrik    | Lundh       |
| Jenny     | Lundin      |
| Tina      | Lööf        |
| Anders    | Magnusson   |
| Jakob     | Malmberg    |
| Torbjörn  | Modig       |
| Conny     | Modig       |
| Andreas   | Molin       |
| Lars      | Molin       |
| Håkan     | Mossgren    |
| Joakim    | Nilsson     |
| Mikael    | Nilsson     |
| Eva       | Nilsson     |
| Magnus    | Nilsson     |
| Ola       | Nilsson     |
| Axel      | Nord        |
| Maria     | Nordman     |
| Anna      | Nyström     |
| Patrik    | Ohlsson     |
| Anders    | Olsson      |
| Johan     | Olsson      |
| Caroline  | Olsson      |
| Marie     | Persson     |
| Filip     | Persson     |
| Per-Erik  | Pettersson  |
| Magnus    | Pettersson  |
| Elaine    | Robertson   |
| Fredrik   | Ryd         |
| Peter     | Solberg     |
| Magnus    | Strömgren   |
| Helena    | Troberg     |
| Christian | Wallman     |
| Frida     | Weidel      |
| Mats      | Wikström    |
| Karin     | Östberg     |
+-----------+-------------+
72 rows in set (0.03 sec)

mysql> select firstname, lastname from students where pnbr like '85%';
+-----------+----------+
| firstname | lastname |
+-----------+----------+
| Henrik    | Berg     |
| Filip     | Persson  |
| Ulrika    | Jonsson  |
| Bo        | Ek       |
+-----------+----------+
4 rows in set (0.04 sec)

mysql> select firstname, lastname, pnbr from students where mod(substr(pnbr,10,1),2)=0;
+-----------+-------------+-------------+
| firstname | lastname    | pnbr        |
+-----------+-------------+-------------+
| Ulrika    | Jonsson     | 850706-2762 |
| Eva       | Hjort       | 860206-1065 |
| Maria     | Andersson   | 860819-2864 |
| Caroline  | Olsson      | 870909-3367 |
| Marie     | Persson     | 870915-2742 |
| Susanne   | Dahl        | 880620-2564 |
| Jenny     | Lundin      | 890622-1928 |
| Lotta     | Bergman     | 891021-1287 |
| Märit     | Aspegren    | 900227-2369 |
| Sofia     | Kjellberg   | 900528-1540 |
| Karin     | Östberg     | 910226-3409 |
| Helena    | Troberg     | 910308-1826 |
| Eva       | Nilsson     | 910707-3787 |
| Karolin   | Ek          | 910915-2068 |
| Eva       | Alm         | 911212-1746 |
| Tina      | Lööf        | 930502-2040 |
| Anna      | Johansson   | 930702-3582 |
| Ylva      | Jacobsson   | 931208-3605 |
| Elaine    | Robertson   | 931213-2824 |
| Birgit    | Ewesson     | 940802-3861 |
| Lotta     | Emanuelsson | 941003-1225 |
| Lisa      | Berg        | 950317-3520 |
| Anna      | Johansson   | 950705-2308 |
| Anna      | Nyström     | 950829-1848 |
| Frida     | Weidel      | 951004-2346 |
| Maria     | Nordman     | 951122-1048 |
+-----------+-------------+-------------+
26 rows in set (0.03 sec)

mysql> select count(firstname) from students;
+------------------+
| count(firstname) |
+------------------+
|               72 |
+------------------+
1 row in set (0.03 sec)

mysql> mysql> coursecode, coursename from courses where coursecode like 'fma%';
+------------+----------------------------------------+
| coursecode | coursename                             |
+------------+----------------------------------------+
| FMA021     | Kontinuerliga system                   |
| FMA051     | Optimering                             |
| FMA091     | Diskret matematik                      |
| FMA111     | Matematiska strukturer                 |
| FMA120     | Matristeori                            |
| FMA125     | Matristeori, projektdel                |
| FMA135     | Geometri                               |
| FMA140     | Olinjära dynamiska system              |
| FMA145     | Olinjära dynamiska system, projektdel  |
| FMA170     | Bildanalys                             |
| FMA175     | Bildanalys, projektdel                 |
| FMA200     | Variationskalkyl                       |
| FMA240     | Linjär och kombinatorisk optimering    |
| FMA270     | Datorseende                            |
| FMA272     | Datorseende, projektdel                |
| FMA420     | Linjär algebra                         |
| FMA430     | Flerdimensionell analys                |
| FMAA01     | Endimensionell analys                  |
| FMAF01     | Matematik - Funktionsteori             |
| FMAF05     | Matematik - System och transformer     |
| FMAF10     | Tillämpad matematik - Linjära system   |
| FMAN10     | Algebraiska strukturer                 |
+------------+----------------------------------------+
22 rows in set (0.03 sec)

mysql> select coursecode from courses where credits > 7.5;
+------------+
| coursecode |
+------------+
| EDA270     |
| EDAA05     |
| EIEF01     |
| EIEN01     |
| EIT020     |
| EITF01     |
| ESS050     |
| ETIA01     |
| EXTA35     |
| EXTF60     |
| FAFF25     |
| FMAA01     |
| FMS012     |
| FRTN01     |
| GEMA70     |
| MIOA01     |
+------------+
16 rows in set (0.03 sec)

h

mysql> select level, count(level) from courses group by level;
+-------+--------------+
| level | count(level) |
+-------+--------------+
| A     |           87 |
| G1    |           31 |
| G2    |           60 |
+-------+--------------+
3 rows in set (0.03 sec)

i)

mysql> select coursecode from takencourses where pnbr = '910101-1234';
+------------+
| coursecode |
+------------+
| EDA070     |
| EDA385     |
| EDAA25     |
| EDAF05     |
| EEMN10     |
| EIT020     |
| EIT060     |
| EITF40     |
| EITN40     |
| EITN50     |
| ESS050     |
| ETIF10     |
| ETIF15     |
| ETIN35     |
| ETS052     |
| ETS075     |
| ETS200     |
| ETSA01     |
| EXTA10     |
| EXTA35     |
| FAFF20     |
| FAFF25     |
| FMA145     |
| FMA420     |
| FMAA01     |
| FMAF05     |
| FMS012     |
| FMSF15     |
| FMSN30     |
| FMSN35     |
| FRTN10     |
| GEMA45     |
| GEMA70     |
| MAMF15     |
| TEK210     |
+------------+
35 rows in set (0.03 sec)

j)

mysql> select courses.coursecode, courses.coursename, credits  from takencourses, courses where pnbr = '910101-1234' and takencourses.coursecode = courses.coursecode ;
+------------+----------------------------------------------------------+---------+
| coursecode | coursename                                               | credits |
+------------+----------------------------------------------------------+---------+
| EDA070     | Datorer och datoranvändning                              |       3 |
| EDA385     | Konstruktion av inbyggda system, fördjupningskurs        |     7.5 |
| EDAA25     | C-programmering                                          |       3 |
| EDAF05     | Algoritmer, datastrukturer och komplexitet               |       5 |
| EEMN10     | Datorbaserade mätsystem                                  |     7.5 |
| EIT020     | Digitalteknik                                            |       9 |
| EIT060     | Datasäkerhet                                             |     7.5 |
| EITF40     | Digitala och analoga projekt                             |     7.5 |
| EITN40     | Avancerad webbsäkerhet                                   |       4 |
| EITN50     | Avancerad datasäkerhet                                   |     7.5 |
| ESS050     | Elektromagnetisk fältteori                               |       9 |
| ETIF10     | Signalbehandling - design och implementering             |     7.5 |
| ETIF15     | Medicinsk signalbehandling                               |     7.5 |
| ETIN35     | IC-projekt 1                                             |     7.5 |
| ETS052     | Datorkommunikation                                       |     4.5 |
| ETS075     | Kösystem                                                 |     4.5 |
| ETS200     | Programvarutestning                                      |     7.5 |
| ETSA01     | Ingenjörsprocessen för programvaruutveckling - metodik   |       5 |
| EXTA10     | Introduktion till Kinas samhällsliv, kultur och språk    |       3 |
| EXTA35     | Introduktionskurs i kinesiska för civilingenjörer        |      15 |
| FAFF20     | Multispektral avbildning                                 |     7.5 |
| FAFF25     | Fysik                                                    |      11 |
| FMA145     | Olinjära dynamiska system, projektdel                    |       3 |
| FMA420     | Linjär algebra                                           |       6 |
| FMAA01     | Endimensionell analys                                    |      15 |
| FMAF05     | Matematik - System och transformer                       |       7 |
| FMS012     | Matematisk statistik, allmän kurs                        |       9 |
| FMSF15     | Markovprocesser                                          |     7.5 |
| FMSN30     | Linjär och logistisk regression                          |     7.5 |
| FMSN35     | Stationär och icke-stationär spektralanalys              |     7.5 |
| FRTN10     | Flervariabel reglering                                   |     7.5 |
| GEMA45     | Förståelse och lärande                                   |       3 |
| GEMA70     | Japanska för tekniker                                    |      15 |
| MAMF15     | Arbetsorganisation och ledarskap                         |       6 |
| TEK210     | Kognition                                                |     4.5 |
+------------+----------------------------------------------------------+---------+
35 rows in set (0.04 sec)

k)

mysql> select sum(courses.credits) from courses inner join takencourses where takencourses.pNbr = '910101-1234' and takencourses.courseCode = courses.courseCode;
+----------------------+
| sum(courses.credits) |
+----------------------+
|                249.5 |
+----------------------+
1 row in set (0.03 sec)

l)

mysql> select avg(takencourses.grade) from courses inner join takencourses where takencourses.pNbr = '910101-1234' and takencourses.courseCode = courses.courseCode;
+-------------------------+
| avg(takencourses.grade) |
+-------------------------+
|                  4.0286 |
+-------------------------+
1 row in set (0.03 sec)

m)

mysql> select takencourses.courseCode from students, takencourses where students.firstName = 'Eva' and students.lastName = 'Alm' and takencourses.pNbr = students.pNbr;
+------------+
| courseCode |
+------------+
| EDA260     |
| EDAA25     |
| EDAF10     |
| EDAN01     |
| EDAN55     |
| EDAN60     |
| EDIN05     |
| EEMF05     |
| EEMN01     |
| EIT140     |
| EITF05     |
| ETIF15     |
| ETIN20     |
| ETS052     |
| ETS061     |
| ETSA05     |
| ETSN05     |
| ETTN01     |
| FAFF25     |
| FMIF15     |
| FMS155     |
| GEMA25     |
| GEMA55     |
| GEMA65     |
| MMKF15     |
| TEK280     |
+------------+
26 rows in set (0.03 sec)

l)

mysql> select sum(courses.credits) from courses, students, takencourses where students.firstName = 'Eva' and students.lastName = 'Alm' and takencourses.pNbr = students.pNbr and courses.courseCode = takencourses.courseCode;
+----------------------+
| sum(courses.credits) |
+----------------------+
|                  181 |
+----------------------+
1 row in set (0.03 sec)

n)

mysql> select students.firstName, students.lastName FROM students WHERE students.pNbr NOT IN(SELECT takencourses.pNbr FROM takencourses);
+-----------+------------+
| firstName | lastName   |
+-----------+------------+
| Filip     | Persson    |
| Caroline  | Olsson     |
| Joakim    | Hall       |
| Johan     | Lind       |
| Erik      | Andersson  |
| Henrik    | Gustavsson |
| Erik      | Andersson  |
| Jonathan  | Jönsson    |
| Bo        | Ek         |
| Magnus    | Hultgren   |
| Anna      | Nyström    |
+-----------+------------+
11 rows in set (0.03 sec)

o)

create view pNbrAvg as select takencourses.pNbr, students.firstName, students.lastName, avg(takencourses.grade) as grade from students, takencourses where takencourses.pNbr = students.pNbr group by takencourses.pNbr;

mysql> select * from pNbrAvg where grade in (select max(grade) from pNbrAvg);
+-------------+-----------+----------+--------+
| pNbr        | firstName | lastName | grade  |
+-------------+-----------+----------+--------+
| 861103-2438 | Bo        | Ek       | 4.3500 |
+-------------+-----------+----------+--------+
1 row in set (0,01 sec)


p)

create view totCredits as select takencourses.pNbr,sum(takencourses.credits) from takencourses.courses where takencourses.courseCode = courses.courseCode group by takencourses.pNbr;

create view stuCredits as select students.pNbr, 0 as credits from students

select * from stuCredits union select * from stuCredits where stuCredits.pNbr not in (select totCredits.pNbr from totCredits)

select a.pNbr, a.firstName, a.lastName from students as a inner join students as b on a.firstName = b.firstName and a.lastName = b.lastName and a.pNbr <> b.pNbr group by a.pNbr









