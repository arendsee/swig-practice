#ifndef __EGGS_H__
#define __EGGS_H__

#include <math.h>

struct Eggs {
 int a, b;
};

struct Spam {
 int a, b;
};

int foo(int x, int y);

int bar(const char *s);

int foo(int x, int y){
    return x + y + 1;
}

double baz(struct Eggs x, struct Spam y){
    return sqrt((x.a - y.a)*(x.a - y.a) + (x.b - y.b)*(x.b - y.b));
}

int bar(const char *s){
    int length = 0;
    for(int i = 0; s[i] != 0; i++){
       length++;
    }
    return length;
}

#endif
