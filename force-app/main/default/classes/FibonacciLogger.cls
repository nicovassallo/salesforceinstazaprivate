public class FibonacciLogger {

    public static void logSequence() {
        Integer n = 10;
        Integer prev = 0;
        Integer curr = 1;

        System.debug('Sequenza di Fibonacci - primi ' + n + ' numeri:');

        for (Integer i = 1; i <= n; i++) {
            System.debug('F(' + i + ') = ' + prev);
            Integer next = prev + curr;
            prev = curr;
            curr = next;
        }
    }

    @AuraEnabled
    public static List<Integer> getSequence() {
        Integer n = 10;
        List<Integer> sequence = new List<Integer>();
        Integer prev = 0;
        Integer curr = 1;

        System.debug('Sequenza di Fibonacci - primi ' + n + ' numeri:');

        for (Integer i = 1; i <= n; i++) {
            System.debug('F(' + i + ') = ' + prev);
            sequence.add(prev);
            Integer next = prev + curr;
            prev = curr;
            curr = next;
        }
        return sequence;
    }
}
