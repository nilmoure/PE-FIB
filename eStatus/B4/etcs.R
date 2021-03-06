#1. Quina �s l'estimaci� puntual del temps mitj� que els estudiants dediquen
#a l'assignatura en q�esti�?
v <- c(127,87,119,95,114,120,129,111,98,112,124,120,95,107);
mean(v)

#2. Amb la mostra disponible, doneu una estimaci� de l'error de la mitjana 
#(error tipus, o standard error, la magnitud de la variaci� d'origen aleatori 
#que �s propi de la mitjana mostral).
sd(v)/sqrt(length(v))

#3. Es demana que trobeu una estimaci� per interval de confian�a al 95% de la 
#mitjana poblacional de la variable "Temps dedicat a l'assignatura". 
#Assumiu que la desviaci� poblacional val $SG$.
A = 14   #desviaci� poblacional
x = (1.96*A)/sqrt(length(v))
mean(v) - x ; mean(v) + x

#4. Calculeu una altra estimaci� per al mateix par�metre, per� sense assumir 
#coneguda la desviaci� poblacional. Feu l'interval amb confian�a $Cnf$%.
x = 80/100    # interval de confian�a
t.test(v,conf.level=x) 

#5. Volem trobar un interval de confian�a al $Cnf2$% per a la mitjana, 
#Suposem tamb� que l'aut�ntica desviaci� �s s=$SG$, i es desitja que 
#l'amplada de l'interval sigui de 10 hores, com a molt. 
#Quantes observacions necessitem recollir?
A =  98       #interval de confian�a(sense percentatge)
B =  14       #desviaci�
x = ((A/2)+50)/100
ceiling(((qnorm(x)*B)/5)^2)