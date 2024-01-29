/*****************************
 * C template
 * Author: Sugil Steve Lee
 *
 * This is for the use in sugilmath/mathematica
 *
 * Last Updated: 2024-01-24
 * *************************** */

#include <stdlib.h>
#include "qol/c/clock.h"

#include <math.h>
#include <complex.h>
#include "../../common/formulae.h"

int main(int argc, char *argv[])
{
	time_measure_start();	/* code start */

	char *question = "";
	printf("\nQuestion: %s\n", question);

	char *solution = "";
	printf("\nSolution: %s\n", solution);

	/* math/physics code here */



	double answer = 0;
	char *unit = "";
	printf("\nAnswer: %.3g %s\n", answer, unit);








	time_measure_end();		/* code end */
	exit(0);
}
