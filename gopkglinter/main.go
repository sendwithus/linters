package main

import (
	"fmt"
	"os"
	"strings"



	"github.com/pelletier/go-toml"
)

func main() {
	if len(os.Args) != 2 {
		printUsage()
		os.Exit(1)
	} else if _, err := os.Stat(os.Args[1]); os.IsNotExist(err) {
		printUsage()
		os.Exit(1)
	}
	t, err := toml.LoadFile(os.Args[1])
	if err != nil {
		fmt.Printf("Unable to parse %s as valid toml file. %s\n", os.Args[1], err.Error())
		os.Exit(1)
	}

	path := t.Get("constraint")
	if path == nil {
		fmt.Printf("Unable to find constraint path")
		return
	}

	success := true
	trees := path.([]*toml.Tree)
	for _, tree := range trees {
		name, ok := tree.Get("name").(string)
		if !ok || strings.Index(name, "sendwithus") == -1 {
			continue
		}
		branch, ok := tree.Get("branch").(string)
		if !ok {
			continue
		}
		if branch != "master" {
			fmt.Printf("%s is not on the master branch\n", name)
			success = false
		}
	}
	if !success {
		os.Exit(1)
	}
}

func printUsage() {
	fmt.Println("usage: gopkg-linter <toml file>")
}
