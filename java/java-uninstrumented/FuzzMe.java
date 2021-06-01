package fuzzme;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Scanner;

public class FuzzMe {
    public static void main(String[] args) {
        String input = "";

        try {
            File file = new File(args[0]);
            BufferedReader br = new BufferedReader(new FileReader(file));
            Scanner in = new Scanner(br);
            input = in.nextLine();
        } catch (FileNotFoundException e) {
            System.err.println("Could not find file");
            return;
        }

        if (input.startsWith("b", 0)) {
            if (input.startsWith("u", 1)) {
                if (input.startsWith("g", 2)) {
                    int i = 1 / 0;
                }
            }
        }
    }
}