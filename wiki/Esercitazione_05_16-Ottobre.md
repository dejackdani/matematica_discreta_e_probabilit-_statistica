---
indice: "5.5"
title: Esercizi Statistica descrittiva
stato: "🔴 Da Iniziare"
file_sorgente: "[[EserciziMDPnew.pdf]]"
---
# Esercizi: Statistica descrittiva

- [ ] **Es. 5.1.** Un bambino di 6 mesi mangia tutti i giorni una pappa di 200 grammi. In una settimana ha registrato i seguenti tempi (espressi in minuti) per consumare il suo pasto: 5,10,4,12,20,10,4.
  (1) Determinare le velocità (espressa in grammi al minuto) registrate dal bambino nel consumare il suo pasto;
  (2) Determinare la velocità media complessiva nei sette giorni;

> [!info]- Soluzione
> (a) Le velocità in grammi al minuto si ottengono dividendo 200 per i tempi registrati e quindi: 40, 20, 50, 16.66, 10, 20, 50.
> (b) Il modo più semplice per ottenere la velocità media è di fare la quantità totale di pappa fratto il tempo totale impiegato: $\frac{1400}{5+10+4+12+20+10+4} = \frac{1400}{65} = 21.53$ g/min.
> In alternativa si poteva fare la [[Correlazione_e_Regressione|media armonica]] delle velocità ottenendo equivalentemente:
> $$\left(\frac{1}{7}\left(\frac{1}{40} + \frac{1}{20} + \frac{1}{50} + \frac{1}{16.66} + \frac{1}{10} + \frac{1}{20} + \frac{1}{50}\right)\right)^{-1} = 21.53\text{ g/min}$$
> *(Osservazione d'aula: quando una grandezza è espressa da un rapporto come $\text{grammi}/\text{minuto}$, si usa la media armonica perché a rimanere costante ogni giorno è il numeratore, ossia i $200\text{ g}$; se a rimanere costante fosse stato il denominatore, cioè i minuti, si sarebbe usata la media aritmetica).*

- [ ] **Es. 5.2.** In 25 scatole di 100 viti si sono contati il numero di pezzi difettosi ottenendo i seguenti dati
  1, 4, 3, 1, 3, 2, 2, 1, 2, 5, 3, 0, 1, 4, 3, 7, 1, 3, 1, 7, 2, 1, 2, 4, 8.
  Determinare le modalità, le frequenze, la media, i quartili, la moda, la varianza, e il range.

> [!info]- Soluzione
> Le modalità sono i valori da 0 a 8 con frequenze rispettive 1, 7, 5, 5, 3, 1, 0, 2, 1.
> La media è 2.84, i quartili sono 1,2,4 la moda è 2, la varianza è 4.21 e il range è 8.

- [ ] **Es. 5.3.** Sono state recensite 512 famiglie di 6 figli. Per ognuna è stato osservato il numero di figlie femmine. I dati sono riportati nella tabella seguente.
  Numero di figlie frequenza
  0 23
  1 64
  2 131
  3 123
  4 107
  5 48
  6 16
  Qual è il numero medio di figlie? Calcolare la varianza sia usando la definizione che usando la formula vista a lezione.

> [!info]- Soluzione
> La media è 2.85. Usando la definizione abbiamo che la varianza $\sigma^2_x$ è
> $\frac{23(0-2.85)^2+64(1-2.85)^2+131(2-2.85)^2+123(3-2.85)^2+107(4-2.85)^2+48(5-2.85)^2+16(6-2.85)^2}{512} = 2.00$.
> Calcolando invece la media dei quadrati abbiamo
> $\overline{x^2} = \frac{64 + 131 \cdot 4 + 123 \cdot 9 + 107 \cdot 16 + 48 \cdot 25 + 16 \cdot 36}{512} = 10.12$
> e quindi
> $\sigma^2_x = \overline{x^2} - \bar{x}^2 = 10.12 - 8.12 = 2.00$.

- [ ] **Es. 5.4.** Sette adulti scelti a caso hanno peso e altezza (espressi in kilogrammi e centimetri) come nella seguente tabella.
  Peso Altezza
  80 175
  90 175
  75 180
  85 190
  70 170
  100 195
  80 170
  Disegnare il diagramma a dispersione; stimare il peso di un adulto alto 177 centimetri e l'altezza di un adulto che pesa 80 chili.

> [!info]- Soluzione
> Siccome dobbiamo stimare il peso rispetto all'altezza scegliamo $x$ =altezza e $y$=peso.
> Abbiamo
> $\bar{x} = 180 + 5 \cdot \frac{-1-1+0+2-2+3-2}{7} = 179.29$ cm.
> $\bar{y} = 80 + 5 \cdot \frac{0+2-1+1-2+4+0}{7} = 82.86$ kg.
> $\overline{x^2} = 32225$ cm$^2$.
> $\sigma^2_x = \overline{x^2} - \bar{x}^2 = 80.1$ cm$^2$.
> $\overline{y^2} = 6950$ kg$^2$
> $\overline{xy} = 14914$ cm $\cdot$ kg.
> $\sigma_{x,y} = \overline{xy} - \bar{x}\bar{y} = 58.0306$ cm $\cdot$ kg.
> $\sigma^2_y = \overline{y^2} - \bar{y}^2 = 84.22$
> L'equazione della retta ai minimi quadrati $y = ax + b$ è quindi data da
> $a = \frac{\sigma_{x,y}}{\sigma^2_x} = 0.72$
> e
> $b = \bar{y} - a\bar{x} = -47.03$
> e quindi abbiamo l'equazione
> $y = 0.72x - 47.03$.
> Per un'altezza di 177 centimetri possiamo quindi stimare un peso di
> $0.72 \cdot 177 - 47.03 = 80.41$
> kilogrammi.
> Invertendo i ruoli di $x$ ed $y$ otteniamo la retta ai minimi quadrati $x = a'y + b'$
> con
> $a' = \frac{\sigma_{x,y}}{\sigma^2_y} = 0.69$
> e $b' = \bar{x} - a'\bar{y} = 179.29 - 0.69 \cdot 82.86 = 122.12$ e abbiamo quindi l'equazione
> $x = 0.69y + 122.12$
> e l'altezza di un adulto che pesa 80 chili viene stimata da
> $0.69 \cdot 80 + 122.12 = 177.32$ cm.

- [ ] **Es. 5.5.** Il PIL in Italia ha fatto registrare le seguenti variazioni percentuali negli ultimi anni
  Anno Variazione
  2020 -8.9%
  2019 +0.3%
  2018 +0.9%
  2017 +1.7%
  2016 +1.3%

> [!info]- Soluzione
> Consideriamo i fattori moltiplicativi corrispondenti alle variazioni percentuali
> Anno Variazione Fattore
> 2020 -8.9% 0.911
> 2019 +0.3% 1.003
> 2018 +0.9% 1.009
> 2017 +1.7% 1.017
> 2016 +1.3% 1.013
> Calcoliamo quindi la media geometrica dei fattori moltiplicativi ottenendo
> $(0.911 \cdot 1.003 \cdot 1.009 \cdot 1.017 \cdot 1.013)^{1/5} = (0.9498)^{1/5} = 0.990$
> La variazione percentuale media è stata quindi del $-1.0\%$
