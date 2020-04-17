import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        for (int i = 1; scanner.hasNext(); i++) {
            System.out.printf("%d %s\n", i, scanner.nextLine());
        }
        scanner.close();
    }
}