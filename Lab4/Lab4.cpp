#include <iostream>

using namespace std;

extern "C" float func();

int main(int argc, char** argv)
{
	setlocale(LC_ALL, "ru");
	cout << "�������� ���������� ����� 200 (������������ ������� ��������)"<<endl;
	float f = func();

	cout << "���������: " << f << endl;

	return 0;
}