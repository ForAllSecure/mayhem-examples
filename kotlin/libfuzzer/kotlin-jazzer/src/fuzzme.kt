package fuzzme;

fun fuzzerInitialize(){
    // any state initialization goes here!
}

fun fuzzerTestOneInput(data: ByteArray) {
    val input = String(data)
    if (input.length >= 3) {
        if (input.get(0) == 'b') {
            if (input.get(1) == 'u') {
                if (input.get(2) == 'g') {
                    System.exit(-1);
                }
            }
        }
    }
}