#include <sys/wait.h>

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include <stdbool.h>
#include <string.h>

#define CSH_READ_LINE_BUFSIZE 1024

#define CSH_TOKEN_BUFFERSIZE 64
#define CSH_TOKEN_DELIMITER " \t\r\n\a\0"

struct err
{
	int errorCode;
	char errorText[100];
};

struct args
{
	int argSize;
	char** args;
};


void errorAloc()
{
	fprintf(stderr, "Error while allocating memory :(\n");
	exit(EXIT_FAILURE);
}

void runProgram(char** arguments)
{
	pid_t pid, wpid;
	int status;

	pid = fork();
	if (pid == 0)
	{
		if(execvp(arguments[0], arguments) == -1)
		{
			perror("csh");
		}
		printf("\nfinalizou!");
		exit(EXIT_FAILURE);
	}
	else if(pid < 0)
	{
		exit(EXIT_FAILURE);
		printf("\ndeu merda");
	}
	else
	{
		do
		{
			wpid = waitpid(pid, &status, WUNTRACED);
		}while(!WIFEXITED(status) && !WIFSIGNALED(status));
	}
}

struct args cshParseArguments(char* line)
{
	int bufferSize = CSH_TOKEN_BUFFERSIZE;
	int index = 0;
	char** tokens = malloc(sizeof(char*) * bufferSize);
	char* currentToken;
	struct args arguments;

	if(!tokens)
	{
		errorAloc();
	}


	currentToken = strtok(line, CSH_TOKEN_DELIMITER);

	while(currentToken != NULL)
	{
		tokens[index] = currentToken;
		index++;

		if(index >= bufferSize)
		{
			bufferSize += CSH_TOKEN_BUFFERSIZE;
			tokens = realloc(tokens, sizeof(char*) * bufferSize);
			if(!tokens)
			{
				errorAloc();
			}
		}

		currentToken = strtok(NULL, CSH_TOKEN_DELIMITER);
	}

	tokens[index] = NULL;

	arguments.argSize = index;
	arguments.args = tokens;

	return arguments;
}

char* cshReadLine()
{
	int bufferSize = CSH_READ_LINE_BUFSIZE;
	int index = 0;
	char* lineBuffer = malloc(sizeof(char) * bufferSize);
	int currentChar;
	
	if(!lineBuffer)
	{
		errorAloc();
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
				errorAloc();
			}
		}
	}
}

struct err cshLoop()
{
	struct err error = {0, "No error!"};

	char* line;
	char** args;
	struct args lineArguments;

	do
	{
		printf("CSH@~:");
		line = cshReadLine();
		lineArguments = cshParseArguments(line);
		args = lineArguments.args;
		runProgram(args);
	}while(error.errorCode == 0);

	return error;
}