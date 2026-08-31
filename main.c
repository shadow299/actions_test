#include "main.h"

int add(int a, int b) { return a + b; }  // example function to test

void setUp(void){} //runs before each test
void tearDown(void){} //runs after each test

void test_add_positive(void) {
    TEST_ASSERT_EQUAL(5, add(2, 3));
}

void test_add_negative(void) {
    TEST_ASSERT_EQUAL(-5, add(-2, -3));
}

void test_add_zeros(void) {
    TEST_ASSERT_EQUAL(0, add(0, 0));
}

int run_tests() {
    UNITY_BEGIN();
    RUN_TEST(test_add_positive);
    RUN_TEST(test_add_negative);
    RUN_TEST(test_add_zeros);
    return UNITY_END();
}

#ifndef TESTING
int main() {
    for(int i = 0; i < 5; i++) {
        printf("Running %d\n", i);
        sleep(2);
    }
    return 0;
}
#endif