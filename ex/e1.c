#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <unistd.h>

char* secret = "cBWTwTwC5eKAcDxpwx88";

void raise_alarm(unsigned long found, unsigned long expected) {
    printf("detected return address corruption!\n");
    printf("found: %lx, expected: %lx\n",found, expected);
    exit(0);
}

void print_secret() {
    printf("Ah! %s\n",secret);
    exit(0);
}

char buffer[256];
int i;

void receive_input() {
    char buf[128];
    fgets(buffer, 256, stdin);
    strcpy(buf, buffer);
}

int run() {
    printf("Can you obtain the secret?\n");
    receive_input();
    printf("Returnning Normally\n");
}

int main() {
    run();
}
