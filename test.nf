#!/usr/bin/env nextflow

Channel.from( ['A', 1, 2], ['B', 3, 4] )
    .map{ it -> it[0] }
    .view()

Channel.from( ['A', 1, 2], ['B', 3, 4] )
    .map{ it -> [ it[1], it[2] ] }
    .view()
