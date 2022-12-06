#include <stdio.h>

struct complex_internal_t {
    int R; // real
    int I; // imaginary
};

union complex_t {
    struct complex_internal_t V; // Value
    long T; // Type
};

typedef struct complex_internal_t complex_internal_t;
typedef union complex_t complex_t;

#define C_I(c) c.V.I // Getter of imaginary part
#define C_R(c) c.V.R // Getter of real part
#define C_C(c) c.T // Getter of complex number

int main() {
    complex_t c1 = {1, 2};
    complex_t c2 = {3, 1};
    complex_t c3;

    C_C(c3) = C_C(c1) + C_C(c2);

    printf("(%d+%di)+(%d+%di) = (%d+%di)\n", C_R(c1), C_I(c1), C_R(c2), C_I(c2), C_R(c3), C_I(c3));
}