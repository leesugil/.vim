/*****************************
 * C template
 * Author: Sugil Steve Lee
 *
 * This is for the use in sugilmath/mathematica
 *
 * Last Updated: 2024-01-18
 * *************************** */

#include <stdlib.h>
#include "template_clock.c"

#include "../../common/constants.h"

int main(int argc, char *argv[])
{
	time_measure_start();	/* code start */

	char *question = "";
	printf("\nQuestion: %s\n", question);

	char *solution = "";
	printf("\nSolution: %s\n", solution);

	/* math/physics code here */



	double answer = 0;
	printf("\nAnswer: %g\n", answer);








	time_measure_end();		/* code end */
	exit(0);
}
