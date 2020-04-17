import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int q = scanner.nextInt();
        for (int i = 0; i < q; i++) {
            int a = scanner.nextInt();
            int b = scanner.nextInt();
            int n = scanner.nextInt();
            int state = 0;
            for (int j = 0; j < n; j++) {
                state += Math.pow(2, j) * b;
                System.out.print(a + state + " ");
            }
            System.out.println();
        }
        scanner.close();
    }
}