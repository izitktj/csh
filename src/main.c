#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define CSH_READ_LINE_BUFSIZE 1024

struct err
{
	int errorCode;
	char errorText[100];
};

struct user
{
	char name[256];
	bool perms[3]; //0= Read, 1= Write, 2= Execute
};

char* cshReadLine()
{
	int bufferSize = CSH_READ_LINE_BUFSIZE;
	int index = 0;
	char* lineBuffer = malloc(sizeof(char) * bufferSize);
	int currentChar;
	
	if(!lineBuffer)
	{
		fprintf(stderr, "Error while allocating memory :(\n");
		exit(EXIT_FAILURE);
	}
	
	while(true)
	{
		currentChar = getchar();
		
		if(currentChar == '\n' || currentChar == EOF)
		{
			lineBuffer[index] = '\0';
			return lineBuffer;
		}else{
			lineBuffer[index] = currentChar;
		}
		
		index++;
		
		if(index >= bufferSize)
		{
			bufferSize += CSH_READ_LINE_BUFSIZE;
			lineBuffer = realloc(lineBuffer, bufferSize);
			
			
			if(!lineBuffer)
			{
				fprintf(stderr, "Error while allocating memory :(\n");
				exit(EXIT_FAILURE);
			}
		}
	}
}

struct err cshLoop(struct user usr)
{
	struct err error = {0, "No error!"};

	char* line;
	char** args;

	do
	{
		printf("%s@~: ", usr.name);
		line = cshReadLine();
	}while(error.errorCode != 0);

	return error;
}

struct user registrateUser()
{
	struct user newUser = {
		"nameless",
		{true, true, true}
	};

	/*printf("Lets create a user!");
	printf("\nUser name: ");
	scanf("%s", newUser.name); */

	return newUser;
}

int main(int argc, char** argv)
{
	struct user newUser = registrateUser();
	struct err error = cshLoop(newUser);

	if(error.errorCode != 0)
	{
		printf("%s", error.errorText);
	}

}