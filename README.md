\# Movie Recommendation Expert System



\## Practical Assignment 1.2



A rule-based Movie Recommendation Expert System developed using Prolog and SWI-Prolog.



\---



\## 1. Problem Statement



To develop an Expert System that recommends movies according to user preferences.



The system uses a knowledge base containing movie-related rules and applies logical inference to find suitable movie recommendations.



\---



\## 2. Objectives



\- Understand the concept of an Expert System.

\- Represent knowledge using facts and rules.

\- Implement rule-based inference using Prolog.

\- Recommend movies according to user preferences.

\- Test the system using different preference combinations.



\---



\## 3. Technology Used



\- Programming Language: Prolog

\- Platform: SWI-Prolog

\- Operating System: Windows

\- Version Control: Git and GitHub



\---



\## 4. Features



The system considers preferences such as:



\- Action

\- Comedy

\- Science Fiction

\- Adventure

\- Family

\- Animation

\- Drama

\- Thriller

\- Hindi language

\- English language



Based on these preferences, the system provides suitable movie recommendations.



\---



\## 5. Knowledge Base



The system contains rules for the following movies:



| Movie | Preferences |

|---|---|

| Interstellar | Science Fiction + Adventure + English |

| The Dark Knight | Action + Thriller + English |

| 3 Idiots | Comedy + Drama + Hindi |

| Dangal | Drama + Family + Hindi |

| Toy Story | Animation + Family |

| Zindagi Na Milegi Dobara | Adventure + Comedy + Hindi |

| Inception | Science Fiction + Thriller + English |

| The Lion King | Animation + Family + Drama |



\---



\## 6. How the System Works



The system follows these steps:



1\. The user starts the program.

2\. The system asks questions about movie preferences.

3\. The user enters `yes` or `no`.

4\. The selected preferences are stored as facts.

5\. The system checks the facts against the recommendation rules.

6\. Matching movies are identified.

7\. Movie details are displayed.

8\. If no rule matches, the system displays that no suitable recommendation was found.



\---



\## 7. How to Run



\### Step 1: Install SWI-Prolog



Install SWI-Prolog on your system.



\### Step 2: Open the project



Open SWI-Prolog and load the source file:



```prolog

\['movie\_recommendation.pl'].

