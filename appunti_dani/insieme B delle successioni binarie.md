 $B=\{$*insieme delle successioni binarie di lunghezza infinita*$\}$ è numerabile?
 
#Proposizione 
 Fingiamo di aver elencato tutte le possibili sequenze di binarie di lunghezza infinita, ci ritroveremo in una situazione simile a questa
 
 $$
  \begin{matrix}
 	b_1 & = & \color{red}{b_{1,1}} & b_{1,2} & \dots \\
 	b_2 & = & b_{2,1} & \color{red}{b_{2,2}} & \dots \\
 	\vdots & = & \vdots & \vdots & \ddots \\
 \end{matrix}
 $$
 
 *Dove ovviamene te ogni valore di $b_{i,j} \in \{0,1\}, \forall i,j$*
 
 a questo punto volessimo però realizzare un nuovo elemento $a$ da inserire nell'insieme $B$, *della stessa lunghezza infinita degli altri elementi*, che però ha la seguente regola:
 
 ogni elemento i-esimo di $a$ deve essere opposto all'elemento $b_{i,i}$. Ossia:
 - se $b_{1,1} = 1 \Rightarrow a_1 = 0$
 - se $b_{2,2} = 1 \Rightarrow a_1 = 0$
 - *e così via...*
   
  ad esempio:
  
 $$
 \begin{matrix}
 	b_1 & = & \color{red}{0} & 0 & 0 & 0 & \dots \\
 	b_2 & = & 1 & \color{red}{0} & 0 & 0 & \dots \\
 	b_2 & = & 0 & 1 & \color{red}{0} &  0 &\dots \\
 	b_2 & = & 1 & 1 & 0 & \color{red}{0} & \dots \\
 	\vdots & = & \vdots & \vdots & \vdots & \vdots & \vdots \\
 	a & = & \color{red}{1} & \color{red}{1}& \color{red}{1}& \color{red}{1} & \ddots
 \end{matrix}
 $$
 
 la sequenza in questione sarà inevitabilmente diversa da qualsiasi altro elemento contenuto nell'insieme e non starà in alcuna fila.

#definizione L'insieme $B$ ha la stessa cardinalità di $\mathbb{R}$
