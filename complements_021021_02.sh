#strings , symbol "A" and "T" are complements of each other , as "C" and "G". You have a function with one side of the DNA(string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all

### DNA_strand ("ATTGC") # return "TAACG"
### DNA_strand ("GTAT") # return "CATA"

# echo out the strings

#!/bin/bash

#DNA="TGCTACGA"

read -p "Please enter DNA string which needs the A <-> T T <-> A C <-> G G <-> C complements " DNA

echo "you enter DNS string: ${DNA}"

a=${#DNA}

echo $a

b=0

CDNA=""

while [ $b -lt $a ]
do
  case ${DNA:b:1} in
    A)
#      echo "T"
      CDNA+="T"
      ;;
    T)
#      echo "A"
      CDNA+="A"
      ;;
    C)
#      echo "G"
      CDNA+="G"
      ;;
    G)
#      echo "C"
      CDNA+="C"
      ;;
    *)
#      echo ${DNA:b:1}
      CDNA+=${DNA:b:1}
      ;;
  esac
  b=$(( b + 1 ))
done

echo "After complements DNA string becomes ${CDNA}"
