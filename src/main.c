#include <stdio.h>
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

	printf("Lets create a user!");
	printf("\nUser name: ");
	scanf("%s", newUser.name);
	printf("\n");

	return newUser;
}

int main(int argc, char** argv)
{
	struct user newUser = registrateUser();
	struct err error = cshLoop(newUser);

	if(error.errorCode != 0)
	{
		printf(error.errorText);
	}

}
