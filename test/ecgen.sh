#!/usr/bin/env bash

. lib/assert.sh
ecgen="../ecgen"

function runs() {
	assert_raises "${ecgen} --help"
	assert_raises "${ecgen} --version"
	assert_raises "${ecgen}" 64
}

function csv() {
	assert_matches "${ecgen} --fp -tcsv --input=fp_10_a.csv.in 10" "$(cat fp_10_a.csv)"
}

runs
csv
assert_end ecgen
