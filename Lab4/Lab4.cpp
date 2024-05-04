#include <iostream>

using namespace std;

extern "C" float func();

int main(int argc, char** argv)
{
	setlocale(LC_ALL, "ru");
	cout << "Точность вычисления равна 200 (Используется формула Симпсона)"<<endl;
	float f = func();

	cout << "Результат: " << f << endl;

	return 0;
}