package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"

	"github.com/forallsecure/testme_go/bad"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Printf("Usagage: ./testme_go <file>\n")
		os.Exit(1)
	}
	bytes, err := ioutil.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}
	bad.Bad(bytes)
}
