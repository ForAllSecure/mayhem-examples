
package fuzzme;

public class FuzzMe {
    public static void fuzzerInitialize(){
        // any state initialization goes here!
    }

    public static void fuzzerTestOneInput(byte[] data) {
        String input = new String(data);
        if (input.startsWith("b", 0)) {
            if (input.startsWith("u", 1)) {
                if (input.startsWith("g", 2)) {
                    int i = 1 / 0;
                }
            }
        }
    }
}
