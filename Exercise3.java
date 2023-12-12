import java.io.*;
import java.util.*;

public class Exercise3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try {
            File file = new File("E://Pre KDU//Pre-Kdu-Training-Clean//test.csv");
            FileReader fr = new FileReader(file);
            BufferedReader br = new BufferedReader(fr);
            String st2 = "";
            HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
            while ((st2 = br.readLine()) != null) {
                String[] arr = st2.trim().split(",");
                for (String st3 : arr) {
                    hashMap.put(st3, hashMap.getOrDefault(st3, 0) + 1);
                }
            }
            ArrayList<Map.Entry<String, Integer>> arr = new ArrayList<>(hashMap.entrySet());
            arr.sort((entry1, entry2) -> entry2.getValue().compareTo(entry1.getValue()));
            System.out.println("Top 3 Repeated Words:");
            int count = 0;
            for (Map.Entry<String, Integer> entry : arr) {
                if (count < 3) {
                    System.out.println(entry.getKey());
                    count++;
                } else {
                    break;
                }
            }
        } catch (FileNotFoundException e) {
            System.out.println(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
