package fuzzme;

import kotlin.system.exitProcess

fun fuzzerInitialize(){
    // any state initialization goes here!
}

fun fuzzerTestOneInput(data: ByteArray) {
    val input = String(data)
    if (input.length >= 3) {
        if (input.get(0) == 'b') {
            if (input.get(1) == 'u') {
                if (input.get(2) == 'g') {
                    exitProcess(0)
                }
            }
        }
    }
}

// fun fuzzerTestOneInput(data: ByteArray) {
//     val input = String(data)
//     if (input.startsWith("b", 0)) {
//         if (input.startsWith("u", 1)) {
//             if (input.startsWith("g", 2)) {
//                 val i: Int = 1 / 0;
//             }
//         }
//     }
// }
