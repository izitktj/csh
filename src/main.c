#include "csh_vitals.h"

int main(int argc, char** argv)
{
	struct err error = cshLoop();

	if(error.errorCode != 0)
	{
		printf("%s", error.errorText);
	}

}