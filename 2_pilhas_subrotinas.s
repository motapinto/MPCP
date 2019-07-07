//o stack pointer (SP) passa de 0x7000 para 0x6FF0
STR 0, [SP, #-16]! //SP - registo base, #-16 - offset/deslocamento da base, pre-indexado - alterado antes de se fazer acesso
LDR X2, [SP], 16 //pós indexado pq o 16 está fora dos parentesis - primeiro acesso e só dps se atualiza



