import java.io.*;
import java.util.*;

public class Exercise1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter First String");
        String first = sc.next();
        System.out.println("Enter Second String");
        String second = sc.next();
        System.out.println("The length of the first string is " + first.length());
        System.out.println("The length of the second string is " + second.length());
        if (first.length() == second.length()) {
            System.out.println("The length of the two strings are the same");
        } else {
            System.out.println("The length of the two strings is not the same");
        }

        if (first.equals(second)) {
            System.out.println("Two strings are equal");
        } else {
            System.out.println("Two strings are not equal");
        }
        sc.close();
    }
}