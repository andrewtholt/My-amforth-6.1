set -x AMFORTH /home/andrewh/Source/Forth/My-amforth-6.1
set AMFORTH_ROOT_LIB $AMFORTH/avr8/lib
set AMFORTH_COMMON_LIB $AMFORTH/common/lib

set -x AMFORTH_LIB "$AMFORTH_ROOT_LIB:$AMFORTH_COMMON_LIB:$AMFORTH_COMMON_LIB/forth2012:$AMFORTH_COMMON_LIB/forth2012/tools:$AMFORTH_COMMON_LIB/forth2012/core:$AMFORTH/appl/myArduino/blocks"

