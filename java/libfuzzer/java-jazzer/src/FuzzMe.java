package fuzzme;

public class FuzzMe {
    public static void fuzzerTestOneInput(byte[] data) {
        String input = new String(data);
        if (input.length() >= 3) {
            if (input.charAt(0) == 'b') {
                if (input.charAt(1) == 'u') {
                    if (input.charAt(2) == 'g') {
                        System.exit(0);
                    }
                }
            }
        }
    }
}
