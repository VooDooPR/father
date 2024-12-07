#include <stdio.h>
#include <string.h>
#include <ctype.h>

void displaySpaces(int spaceCount);
void displayNewLines(int lineCount);
void loadFatherReplies(char* replies[]);
void loadStatements(char* statements[]);
char readFirstCharacter();

int main() {
    setbuf(stdout, NULL);

    int score = 0;
    int attempts = 0;
    int maxAttempts = 3;
    char userResponse;
    int statementChoice;
    char* fatherReplies[6];
    char* statements[6];
    int points[] = {4, 2, 1, 0, -2, -4};

    displaySpaces(26);
    printf("FATHER\n");
    displaySpaces(20);
    printf("CREATIVE COMPUTING\n");
    displaySpaces(18);
    printf("MORRISTOWN, NEW JERSEY\n");
    displayNewLines(3);

    printf("WANT TO HAVE A DEBATE WITH YOUR FATHER, EH??\n\n");
    printf("DO YOU WANT INSTRUCTIONS? ");
    userResponse = readFirstCharacter();

    if (toupper(userResponse) == 'Y') {
        printf("\nYOU ARE GOING TO PLAY A GAME IN WHICH YOU WILL DISCUSS\n");
        printf("A PROBLEM WITH YOUR FATHER AND ATTEMPT TO GET HIM TO\n");
        printf("AGREE WITH YOU IN THREE TRIES.\n\n");
        printf("FOR EACH STATEMENT YOU MAKE, I WILL TELL YOU WHAT\n");
        printf("YOUR FATHER REPLIED.\n\n");
        printf("YOU MUST SELECT YOUR STATEMENT FROM ONE OF THE FOLLOWING SIX.\n");
    }

    loadStatements(statements);
    loadFatherReplies(fatherReplies);

    printf("\n**********\n");
    for (int i = 0; i < 6; i++) {
        printf("%d. %s\n", i + 1, statements[i]);
    }
    printf("**********\n\n");

    printf("THE ISSUE IS:\n");
    printf("YOU WANT TO GO OUT SATURDAY NIGHT.\n");
    printf("YOUR FATHER OPPOSES THE IDEA.\n\n");
    printf("WHEN YOU FIRST BRING UP THE IDEA, YOUR FATHER STATES:\n");
    printf("\"NO, YOU CAN'T GO OUT ON A DATE SATURDAY NIGHT, AND THAT'S THAT.\"\n\n");

    while (attempts < maxAttempts) {
        printf("HOW WOULD YOU APPROACH YOUR FATHER?\n");
        printf("WHAT WOULD YOU SAY FIRST? ");
        scanf("%d", &statementChoice);

        if (statementChoice < 1 || statementChoice > 6) {
            printf("INVALID CHOICE. PLEASE CHOOSE BETWEEN 1 AND 6.\n");
            continue;
        }

        int choiceIndex = statementChoice - 1;
        printf("YOUR FATHER SAID: \"%s\"\n", fatherReplies[choiceIndex]);
        score += points[choiceIndex];

        if (points[choiceIndex] > 0) {
            printf("\nAGREEMENT REACHED!\n");
            break;
        }

        attempts++;
    }

    printf("\nON A SCALE OF -7 TO 4, YOUR SCORE WAS %d POINTS.\n", score);

    printf("\nIT IS NOW SATURDAY NIGHT. WHAT DO YOU DO?\n");
    printf("1. GO OUT.\n2. STAY HOME.\n");
    printf("YOUR CHOICE? ");
    userResponse = readFirstCharacter();

    if (userResponse == '1') {
        printf("YOUR FATHER CHECKED UP ON YOU.\n");
        if (score < 0) {
            printf("YOU DIDN'T REALLY SUCCEED IN CHANGING YOUR FATHER'S IDEAS AT ALL.\n");
        } else {
            printf("WELL DONE!\n");
        }
    } else {
        printf("YOU STAYED HOME. MAYBE NEXT TIME YOU'LL CONVINCE YOUR FATHER.\n");
    }

    return 0;
}

void displaySpaces(int spaceCount) {
    for (int i = 0; i < spaceCount; i++) {
        printf(" ");
    }
}

void displayNewLines(int lineCount) {
    for (int i = 0; i < lineCount; i++) {
        printf("\n");
    }
}

void loadFatherReplies(char* replies[]) {
    replies[0] = "FINE, YOU CAN STAY HOME.";
    replies[1] = "I DON'T THINK YOU DESERVE TO GO OUT SATURDAY NIGHT.";
    replies[2] = "MAYBE, BUT I STILL DON'T THINK YOU SHOULD GO.";
    replies[3] = "BABYSITTING WON'T CHANGE MY MIND.";
    replies[4] = "YOU NEVER LISTEN TO ME!";
    replies[5] = "YOU'RE GROUNDED FOR THAT ATTITUDE!";
}

void loadStatements(char* statements[]) {
    statements[0] = "O.K. I WILL STAY HOME.";
    statements[1] = "BUT I'D REALLY LIKE TO GO. ALL MY FRIENDS ARE GOING.";
    statements[2] = "IF ALL MY WORK IS DONE, I SHOULD BE ABLE TO GO.";
    statements[3] = "IF YOU LET ME GO OUT, I'LL BABYSIT ALL NEXT WEEK.";
    statements[4] = "YOU NEVER LET ME DO WHAT I WANT TO DO.";
    statements[5] = "I'M GOING ANYWAY!";
}

char readFirstCharacter() {
    int nextChar;
    char firstChar;
    scanf(" %c", &firstChar);
    while ((nextChar = getchar()) != '\n');
    return toupper(firstChar);
}
