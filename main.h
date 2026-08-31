#include "unity.h"
#include <stdio.h>
#include <unistd.h>

int add(int a, int b);
void setUp(void);
void tearDown(void);

void test_add_positive(void);

void test_add_negative(void);
void test_add_zeros(void);

int run_tests();