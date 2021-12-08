# script to print only the odd numbers in a range
#!/bin/bash
echo “enter a start value”
     read st
  echo  “enter a end value”
    read st1
      while [ "$st" -le  "$st1" ]
        do
      if  [ 'expr $st 2' -gt 0 ]
     then
       echo “$st is odd number”
	fi
      done
