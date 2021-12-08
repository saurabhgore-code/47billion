#!/bin/bash
function test-shadow(){
	if [ -e /etc/shadow ]
	then
	echo "it exist"
        else
	echo "does not exist"
	fi
test-passwd
}

function test-passwd(){
	if [ -e /etc/passwd ]
        then
        echo "it exist"
        else
        echo "does not exist" 
        fi
}

test-shadow

