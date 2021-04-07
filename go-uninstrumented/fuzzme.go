package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Printf("Usagage: ./fuzzme_go <file>\n")
		os.Exit(1)
	}
	bytes, err := ioutil.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}
	Bad(bytes)
}

func Bad(bytes []byte) int {
	content := string(bytes)
	if len(content) < 3 {
		return 0
	}
	if string(content[0]) == "b" {
		if string(content[1]) == "u" {
			if string(content[2]) == "g" {
				_ = divBy(0)
			}
		}
	}
	return 0
}

func divBy(val int) int {
	y := 1 / val
	return y
}

func Fuzz(data []byte) int {
	_ = Bad(data)
	return 0
}
