#!/bin/bash

r=$1; xyz=(${r//,/ })

x_1=${xyz[0]}; y_1=${xyz[1]}; z_1=${xyz[2]}

x_2=0; y_2=0; z_2=0

shift
while [ "$#" -gt 0 ]; do
    angle=$(echo "3.141592654*$1/360" | bc -l)
    shift; axis=$1; shift

    a=$(echo "c($angle)" | bc -l)

    b=0; c=0; d=0

    case "$axis" in
        'x')
            b=$(echo "s($angle)" | bc -l) ;;
        'y')
            c=$(echo "s($angle)" | bc -l) ;;
        'z')
            d=$(echo "s($angle)" | bc -l) ;;
        *)
            break ;;
    esac

    x_2=$(echo "($a*$a + $b*$b - $c*$c - $d*$d)*$x_1 + 2*($b*$c - $a*$d)*$y_1 + 2*($a*$c + $b*$d)*$z_1" | bc -l)
    y_2=$(echo "($a*$a - $b*$b + $c*$c - $d*$d)*$y_1 + 2*($c*$d - $a*$b)*$z_1 + 2*($a*$d + $b*$c)*$x_1" | bc -l)
    z_2=$(echo "($a*$a - $b*$b - $c*$c + $d*$d)*$z_1 + 2*($a*$b + $c*$d)*$y_1 + 2*($b*$d - $a*$c)*$x_1" | bc -l)

    x_1=$x_2; y_1=$y_2; z_1=$z_2
done

echo $(printf %.5f $x_1) $(printf %.5f $y_1) $(printf %.5f $z_1)
