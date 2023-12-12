import java.io.*;
import java.util.*;

public class Exercise2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<String> list = new ArrayList<String>();
        HashSet<String> hashSet = new HashSet<String>();
        HashMap<String, Integer> hashmap = new HashMap<String, Integer>();

        for (int i = 0; i < 10; i++) {
            String st = sc.next();
            list.add(st);
            hashSet.add(st);
            // if(hashmap.containsKey(st)){
            // Integer te=hashmap.get(st);
            // hashmap.replace(st,te+1);
            // }
            // else{
            // hashmap.put(st,1);
            // }
            hashmap.put(st, hashmap.getOrDefault(st, 0) + 1);
        }
        System.out.println("List Contains: ");
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }
        System.out.println("set Contains: ");
        Iterator<String> its = hashSet.iterator();
        while (its.hasNext()) {
            System.out.println(its.next());
        }
        System.out.println("Frequency of the words: ");
        for (String key : hashmap.keySet()) {
            System.out.println("Word = " + key + ",Frequency = " + hashmap.get(key));
        }
    }
}
