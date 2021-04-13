package fuzzme;

public class FuzzMe {
    fun fuzzerInitialize(){
        // any state initialization goes here!
    }

    fun fuzzerTestOneInput(data: ByteArray) {
        val input = String(data)
        if (input.startsWith("b", 0)) {
            if (input.startsWith("u", 1)) {
                if (input.startsWith("g", 2)) {
                    val i: Int = 1 / 0;
                }
            }
        }
    }
}