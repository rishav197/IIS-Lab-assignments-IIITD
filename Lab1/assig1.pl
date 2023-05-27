/*
subject:-
1. introduction to programming
2. digital circuits
3. math-1
4. IHCI
5. commskill

6. DSA
7. IIS
8. PS
9. CO
10. MB

11. AdvProgg
12. OS
13. DM
14. Math3
15. signal&sys

16. DBMS
17. ADA
18. Math4
19. SML
20. LO
21. ML
22. CNC
23. AI
*/

/* start of the Program */
start:- 
    write('What is your Name: '),
    read(Name), nl,
    write('What is your cgpa score ?: '), nl,
    getcgpa(Name).

start:-
    write('Sorry, I don\'t see any best Career for you yet :(').

get_gradept(Rs) :-
  get_gradept( [], Rs ).

get_gradept( Ss , Rs ):-
  writeln('Enter your Subject grade points one by one [0 to 10]: '),
  read( S ),
  dif( S , stop ), !,
  get_gradept( [S|Ss] , Rs ).

get_gradept( Rs, Rs ).


/* Sum of all the elements of list */
getSumLST([], 0).
getSumLST([H|T], N):-
                getSumLST(T, N1), N is N1+H,
                write(N).

getcgpa(Name):-
    get_gradept(Rs),
    getSumLST(Rs, Sum),
    write('Sum of grade points all Subjects: '), nl,
    write('Total no. of Subjects: '),
    read(NoOfSubs),
    Result is (Sum/NoOfSubs),
    write(Name), write(' has the cgpa score of '),
    write(Result), nl,
    careerSuggested(Name, Result, Career), nl,
    write(Career).


/* Careers Suggested */
response(Reply):-
    read(Reply),
    write(Reply), nl.

/* # Suggested Careers #
softwareDeveloper
bigDataEngineer
dataScientists
machineLearningEngineer
researchScientist
AiDataAnalyst
robotics
productManager
upscCSE
collegeProfessor
 */

careerSuggested(Name, CGPA, softwareDeveloper):-
    eligibility(Name, CGPA, softwareDeveloper).
    

careerSuggested(Name, CGPA, bigDataEngineer):-
    eligibility(Name, CGPA, bigDataEngineer).


careerSuggested(Name, CGPA, dataScientists):-
    eligibility(Name, CGPA, dataScientists).


careerSuggested(Name, CGPA, machineLearningEngineer):-
    eligibility(Name, CGPA, machineLearningEngineer).


careerSuggested(Name, CGPA, researchScientist):-
    eligibility(Name, CGPA, researchScientist).


careerSuggested(Name, CGPA, aiDataAnalyst):-
    eligibility(Name, CGPA, aiDataAnalyst).


careerSuggested(Name, CGPA, roboticsScientist):-
    eligibility(Name, CGPA, roboticsScientist).


careerSuggested(Name, CGPA, productManager):-
    eligibility(Name, CGPA, productManager).


careerSuggested(Name, CGPA, upscCSE):-
    eligibility(Name, CGPA, upscCSE).


careerSuggested(Name, CGPA, collegeProfessor):-
    eligibility(Name, CGPA, collegeProfessor).

/* eligibility for suggested careers */
eligibility(_, CGPA, softwareDeveloper):-
    (CGPA >= 4.5),
    write( 'Are you interested in software Developement ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write( 'You can go for \'SOFTWARE DEVElOPMENT\' ').
  

eligibility(_, CGPA, bigDataEngineer):-
    (CGPA >= 8),
    write( 'Are you interested in Artificial Intelligence ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write( 'Are you interested in building and organization ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write('You can go for \'BIG DATA Engineer\' ').


eligibility(_, CGPA, dataScientists):-
    (CGPA >= 8),
    write( 'Are you interested in dataScience ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write('Are you interested in new modern tools like Spark, Hadoop, Pig, Hive, etc. ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write( 'You can go for \'DATA SCIENTIST\' ').


eligibility(_, CGPA, machineLearningEngineer):-
    (CGPA >= 8),
    write('Are you interested in Machine Learning ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write('Are you go for masters in Computer Science ? (yes/no): ' ),
    response(Reply),
    Reply=yes,
    write('You can go for \'MLEngineer\' ' ).
  

eligibility(_, CGPA, researchScientist):-
    (CGPA >= 8.5),
    write('Are you interested for Research in Computer Science ? (yes/no): ' ),
    response(Reply),
    Reply=yes,
    write('Are you interested in Machine Intelligence ? (yes/no): ' ),
    response(Reply),
    Reply=yes,
    write('Are you interested in AI, ML, NLP and DL ? (yes/no): ' ),
    response(Reply),
    Reply=yes,
    write( 'You can go for \'RESEARCH SCIENTIST\' ').


eligibility(_, CGPA, aiDataAnalyst):-
    (CGPA >= 8.5),
    write( 'Are you interested in Artificial Intelligence ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write( 'Are you interested in Data mining, data cleaning and data interpretation ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write( 'You can go for \'AI DATA ANALYST\' ').


eligibility(_, CGPA, roboticsScientist):-
    (CGPA >= 8.5),
    write( 'Are you interested in Robotics ? (yes/no): '),
    response(Reply),
    Reply=yes,
    write( 'Are you go for masters in Robotics ? (yes/no): ' ),
    response(Reply),
    Reply=yes,
    write( 'You can go for \'ROBOTICS SCIENTIST\' ').
  

eligibility(_, CGPA, productManager):-
    (CGPA >= 5),
    write('do you have good leadership skills ? (yes/no): ' ),
    response(Reply),
    Reply=yes,
    write('Are you interested in making strategy for Business and data interpretation ? (yes/no):' ),
    response(Reply),
    Reply=yes,
    write( 'You can go for \'PRODUCT MANAGER\' ').


eligibility(_, CGPA, upscCSE):-
    (CGPA >= 5.5),
    write('Are you interested goverment job ? (yes/no): ' ),
    response(Reply),
    Reply=yes,
    write('do you want to take grade A level goverment job ? (yes/no): ' ),
    response(Reply),
    Reply=yes,
    write('You can go for UPSC CIVIL SERVICE EXAMINATION and CRACK it').


eligibility(_, CGPA, collegeProfessor):-
    (CGPA >= 6),
    write( 'Are you interested to become a College Professor ? (yes/no): '  ),
    response(Reply),
    Reply=yes,
    write( 'You can prepare for UGC NET, GATE, SLET and CSIR NET and Serve as College Professor').


























