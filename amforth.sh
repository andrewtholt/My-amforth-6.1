export AMFORTH=/home/andrewh/Source/Forth/amforth-6.1
AMFORTH_ROOT_LIB=$AMFORTH/avr8/lib
AMFORTH_COMMON_LIB=$AMFORTH/common/lib

export AMFORTH_LIB="$AMFORTH_ROOT_LIB:\
    $AMFORTH_COMMON_LIB:\
    $AMFORTH_COMMON_LIB/forth2012:\
    $AMFORTH_COMMON_LIB/forth2012/tools:\
    $AMFORTH_COMMON_LIB/forth2012/core:\
    $AMFORTH/appl/myArduino/blocks"

