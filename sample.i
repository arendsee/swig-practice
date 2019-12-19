%module sample
%{
#include "Eggs.h"
%}

struct Eggs {
 int a, b;
};

struct Spam {
 int a, b;
};

int foo(int x, int y);

int bar(const char *s);

int baz(struct Eggs, struct Spam);

#define PI 3.14159;
