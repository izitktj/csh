#ifndef CSH_VITALS
#define CSH_VITALS

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define CSH_READ_LINE_BUFSIZE 1024

struct err
{
    int errorCode;
    char errorText[100];
};

/*
    Main loop from CSH
*/
struct err cshLoop();

/*
    Read keyboard befores get a EOF or \n signal, then returns the char*
*/
char* cshReadLine();

/*
    Prints there ocurred a error and interrupt application
*/
void errorAloc();

#endif