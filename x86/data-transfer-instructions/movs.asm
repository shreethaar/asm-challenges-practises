; Moving a string from source to destination

MOVS:

MOVSB   ; Move a byte from [SI] to [DI] and update both indicies
MOVSW   ; Move a word from [SI] to [DI] and update both indicies


; If using REP prefix to repeat operation

REP MOVSB   ; Repeat MOVSB to move a whole string from source to destination


