#include <stdio.h>
#include <stdlib.h>
#include <math.h>

const double pi = 3.14159265358979323846;

//VF
extern double vf1a(double b, double m, double n);
extern double vf1b(int w, double x);
extern double vf2a(double a, double b, double c, double d);
extern double vf5(double *x, double *y, int n);
extern double vf7(double x);
extern double vf9a(double x);
extern double vf9b(double graus);

//SIMD
extern void simd1a(float *P, float *Q, float *R, int n); //mal
extern void simd1b(float *Z1, int n, float k);
extern void simd1c(float *P, float *Q, float *R, int n, float k); //mal
extern long int simd2(int *R, int *S, int n); //mal
extern long int simd3(char *V, long int n, char val);
extern double simf6(double *V, long int n);
extern long int simd7(float *V, long int n, float lim);
//sub rotina que calcula a multiplicao de n vetores complexos
//extern void simd9(float *Z1, float *Z2, float *Z, long int n);


int main(void)
{
//Virgula flutuante -----------------------------------------------------------------------------
	printf("\nVirgula flutuante -------------------------------------------: \n");
/*
	//1a)
		double b = 7.8, m = 3.6, n = 7.1;
		printf("\n1A: \n");
		printf("return = %f\n", vf1a(b, m, n));
		printf("in c = %f\n", -m*(b+n));

	//1b)
		double x1 = 7.1;
		int w1 = 7;
		printf("\n1B: \n");
		printf("return = %f\n", vf1b(w1, x1));
		printf("in c = %f\n", (sqrt(7.1) + w1));

	//2a)
		double a2 = 2.7, b2 = 5.8, c2 = 4.567, d2 = 1.76;
		printf("\n2: \n");
		printf("return = %f\n", vf2a(a2, b2, c2, d2));
		printf("in c = %f\n", ((a2-b2)*c2)/(d2+a2-3));

	//5)
		double x5[] = {1.3, 4.5, 6.7};
		double y5[] = {2.5, 6.8, 1.76};
		printf("\n5: \n");
		printf("return = %f\n", vf5(x5, y5, 3));
		printf("in c = %f\n", (x5[0]*y5[0]) + (x5[1]*y5[1]) + (x5[2]*y5[2]));

	//7)
		double x7 = 0.0;
		printf("\n7: \n");
		printf("return = %f\n", vf7(x7));
		printf("in c = %f\n", sqrt(pow(1.570796327*2, 3)));
/*
	//9a)
		double x = pi/2;
		double cos_x = vf9a(x); //cos_x = cos(x)
		printf("9A: \n");
		printf("cos(%f) = %f\n\n", x, cos_x);
		printf("in c: cos(%f) = %f\n", x, cos(1.570796327));

	//9b)
		x = (x*180)/pi; //passa para graus
		double res_9b = vf9b(x); //res_9b = y = 100 + 50 × cos(x) (x em graus)
		printf("9B: \n");
		printf("Sub-rotina vf9b:\n");
		printf("100+50*cos(%f) = %f\n\n", x, res_9b);
		printf("in c: 100+50*cos(%f) = %f\n\n", x, 100+50*cos(1.570796327));

	//9c)
	 	for(int i = 0 ; i < 90 ; i += 15)
	 		printf("vf9b(%d) = %f\n", i, vf9b(i));

//---------------------------------------------------------------------------------------------------
//SIMD ----------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------

	printf("SMID ------------------------------------------------------: \n");
*//*
	//1a)
		float C[8];
		float A[8] = {1, 7.5,  -2.5,  3,   -1.93, -3.5, -11,   72};
		float B[8] = {2, 4.5, 1.7, -12.8, 5.6,   9.8,  1.65, 31.98};

		simd1a(A, B, C, 8);
		printf("\n1A: \n");
		for(int i = 0 ; i < 8 ; i++) {
			float temp = C[i];
			printf("C[%d] = %f\n", i, temp);
		}

	//1b)
		simd1b(C, 8, -1.5);
		printf("\n1B: \n");
		for(int i = 0 ; i < 8 ; i++) {
			float temp = C[i];
			printf("C[%d] = %f\n", i, temp);
		}

	//1c)
		float D[8];
		simd1c(A, B, D, 8, -1);
		printf("\n1C: \n");
		for(int i = 0 ; i < 8 ; i++) {
			float temp = D[i];
			printf("D[%d] = %f\n", i, temp);
		}

	//2)
		int A2[4] = {1, 7,  -2,  3};
		int B2[4] = {2, 4, 1, -12};
		printf("\n2: \n");
		printf("return = %li\n", simd2(A2, B2, 4));

	//3)
		char string3[] = "ABABABABABABABAB";
		printf("\n3: \n");
		printf("num of occorencias de %c = %li\n", 'A', simd3(string3, 16, 'A'));
*/
	//6)
		double V6[] = {1, 7.5,  -2.5,  3,   2.5, -3.5, 0, 1};
		printf("norma de V: %f\n", simf6(V6, 8));
	//7)
		float V7 [] = {1, 7.5,  -2.5,  3,   2.5, -3.5, 0, 1};
		float lim = 5.2;
		printf("num de elems inferiores a %f: %d\n", lim, simd7(V7, 8, lim));


/*	//9)
	simd9(A, B, C, 8);
	printf("9: \n");
		for(int i = 0 ; i < 8 ; i++) {
			printf("%f", C[i]);
		}

*/
	return EXIT_SUCCESS;
}





