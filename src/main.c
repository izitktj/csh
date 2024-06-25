#include "csh_vitals.h"

struct user
{
	char name[256];
	bool perms[3]; //0= Read, 1= Write, 2= Execute
};


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
	struct err error = cshLoop();

	if(error.errorCode != 0)
	{
		printf("%s", error.errorText);
	}

}