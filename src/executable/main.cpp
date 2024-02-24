#include <iostream>
#include <logutil.h>
#include <mathlib.h>
int main() {
    logI("Hello!");
    logI(sum(7, 5));
    #ifdef TEST
    logI(TEST);
    #endif
    return 0;
}