/* C template
 *
 * Author: Sugil Steve Lee
 * Last Updated: 12/21/2023
 *
 * */

#include <stdio.h>
#include <sys/time.h>
#include <time.h>

int main(int argc, char *argv[])
{
	/* code speed measurement */
	/* wall-clock time */
	struct timeval start_wall, end_wall;
	double elapsed_time;

	gettimeofday(&start_wall, NULL);

	/* cpu time */
	clock_t start_cpu, end_cpu;
	double cpu_time_used;

	start_cpu = clock();

	/* actual code
	 * start here */













	/* end of
	 * actual code */

	/* collect cpu time */
	end_cpu = clock();
	cpu_time_used = ((double) (end_cpu - start_cpu)) / CLOCKS_PER_SEC;

	printf("\n\n\t*** END OF CODE ***\n\tCPU time used: %f seconds\n", cpu_time_used);

	/* collect wall-clock time */
	gettimeofday(&end_wall, NULL);
	elapsed_time = (end_wall.tv_sec - start_wall.tv_sec) + (end_wall.tv_usec - start_wall.tv_usec) / 1000000.0;

	printf("\n\tElapsed wall-clock time: %f seconds\n", elapsed_time);

	return 0;
}
