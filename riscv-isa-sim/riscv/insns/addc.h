struct complex_internal_t {
    int R; // real
    int I; // imaginary
};

union complex_t {
    struct complex_internal_t V; // Value
    reg_t T;                     // Type
};

printf("addc!!!!!\n");
printf("(addc): size of reg_t: %d\n", sizeof(reg_t));

typedef struct complex_internal_t complex_internal_t;
typedef union complex_t complex_t;

#define C_I(c) c.V.I // Getter of imaginary part
#define C_R(c) c.V.R // Getter of real part
#define C_C(c) c.T   // Getter of complex number

complex_t rs1, rs2, rd;
C_C(rs1) = RS1;
C_C(rs2) = RS2;
C_R(rd) = C_R(rs1) + C_R(rs2);
C_I(rd) = C_I(rs1) + C_I(rs2);

WRITE_RD(sext_xlen(C_C(rd)));
