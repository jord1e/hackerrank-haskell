import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int i = scanner.nextInt();
        double d = scanner.nextDouble();
        scanner.nextLine();
        String s = scanner.nextLine();
        scanner.close();
        System.out.printf("String: %s\nDouble: %s\nInt: %d", s, d, i);
    }
}