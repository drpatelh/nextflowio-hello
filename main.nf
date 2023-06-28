#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

process sayHello {
  input: 
    val x
  output:
    path '*.txt'
  script:
    """
    echo '$x world!' > hello.txt
    """
}

workflow {
  Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
