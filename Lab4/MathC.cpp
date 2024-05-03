#include <math.h>
#include<iostream>
using namespace std;

extern "C" float MathC(float x) {
	float tg = tan(x);
	float res = cbrt(tg);
	cout << res << endl;
	return res;
}