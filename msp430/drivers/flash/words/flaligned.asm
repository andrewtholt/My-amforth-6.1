;Z FLALIGNED   a -- a'      align IDP to flash boundary
;   $200 OVER - $1FF AND + ;
    HEADER(XT_FLALIGNED,9,"flaligned",DOCOLON)
        DW XT_DOLITERAL,0200h,XT_OVER,XT_MINUS,XT_DOLITERAL,01FFh,XT_AND,XT_PLUS,XT_EXIT
