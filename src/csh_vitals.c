#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define CSH_READ_LINE_BUFSIZE 1024

struct err
{
	int errorCode;
	char errorText[100];
};


void errorAloc()
{
	fprintf(stderr, "Error while allocating memory :(\n");
	exit(EXIT_FAILURE);
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

	do
	{
		printf("CSH@~:");
		line = cshReadLine();
	}while(error.errorCode == 0);

	return error;
}