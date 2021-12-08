#!/bin/bash
#echo -n "Number : "
#read num;

#for i in $(seq 0 $num)
#do
   #if [ $(expr $i % 2) == 0 ]
   #then
       #echo $i
   #fi
#done

#!/bin/bash
function student_marks() {
	echo "enter the marks"
        read marks
	if [[ marks -gt 40 && marks -lt 50 ]]
	then
        echo "Passed grade"
       elif [[ marks -gt 50 && marks -lt 60 ]]
       then
	echo "C grade"
       elif [[ marks -gt 60 && marks -lt 70 ]]
       then
	echo "B grade"
      elif [[ marks -gt 70 && marks -lt 80 ]]
	then
	echo "B+ grade"
     elif [[ marks -gt 80 && marks -lt 90 ]]
     then
	echo "A grade"
     else
      echo "failed"
      fi
	}
student_marks
