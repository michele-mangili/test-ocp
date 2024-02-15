package main

import (
	"fmt"
	"time"
)

func main() {
  ctr := 1 
  for {
    fmt.Println(ctr, "Hello world 2")
    time.Sleep(500 * time.Millisecond)
    ctr++
  }
}
