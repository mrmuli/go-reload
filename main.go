package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func index(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World \n")
	fmt.Fprintf(w, "Serve me up :-) \n")
}

func main() {
	router := mux.NewRouter() // mux helps in defining our app's route
	router.HandleFunc("/", index)
	log.Fatal(http.ListenAndServe(":4000", router))
}
