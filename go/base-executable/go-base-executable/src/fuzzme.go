package main

import (
    "fmt"
    "io/ioutil"
    "log"
    "os"
)

func fuzzme(bytes []byte) int {
    content := string(bytes)
    if len(content) >= 3 {
        if string(content[0]) == "b" {
            if string(content[1]) == "u" {
                if string(content[2]) == "g" {
                    panic("found a bug!")
                }
            }
        }
    }
    return 0
}

func main() {
    if len(os.Args) != 2 {
        fmt.Printf("Usage: ./fuzzme <file>\n")
        os.Exit(1)
    }
    bytes, err := ioutil.ReadFile(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }
    fuzzme(bytes)
}
