//o stack pointer (SP) passa de 0x7000 para 0x6FF0
STR 0, [SP, #-16]! //SP - registo base, #-16 - offset/deslocamento da base, pre-indexado - alterado antes de se fazer acesso
LDR X2, [SP], 16 //p�s indexado pq o 16 est� fora dos parentesis - primeiro acesso e s� dps se atualiza



