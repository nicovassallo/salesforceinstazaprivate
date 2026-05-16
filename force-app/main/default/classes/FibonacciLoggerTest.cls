@isTest
private class FibonacciLoggerTest {

    @isTest
    static void getSequence_returnsFirstTenFibonacciNumbers() {
        Test.startTest();
        List<Integer> result = FibonacciLogger.getSequence();
        Test.stopTest();

        List<Integer> expected = new List<Integer>{0, 1, 1, 2, 3, 5, 8, 13, 21, 34};
        System.assertEquals(10, result.size(), 'La sequenza deve contenere 10 numeri');
        System.assertEquals(expected, result, 'La sequenza deve corrispondere ai primi 10 numeri di Fibonacci');
    }

    @isTest
    static void logSequence_executesWithoutError() {
        Test.startTest();
        FibonacciLogger.logSequence();
        Test.stopTest();
    }
}
