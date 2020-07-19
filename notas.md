# Estudo de Eletro

## Aulas Praticas

### Aula 4 Ex 8
![A4E8fig1](A4E8fig1.png)
#### a) Metodo direto
![A4E8fig1comTudo](A4E8fig1comTudo.png)
##### **I**. Identificar nós essenciais

Existem 4 nós essenciais

##### **II**. Aplicar a lei dos nós a n-1 nós essenciais

| Nó | Expressão |
|------|:-----------------:|
| A |  I1 + I2 + I3 = 0 |
| B | I3 = I5 + I4 |
| C | I2 + I4 = I6 |

##### **III**. Aplicar a lei das malhas às malhas simples

| malha | Expressão |
|------|:-----------------:|
| m1 |  25·I2 - 10·I4 - 5·I3 = 0 |
| m2 | 10·I4 + 8·I6 - 70·I5 = 0 |
| m3 | 70·I5 - 180 + 5·I3 = 0 |


##### **IV.** Fazer a matriz conjunta

| I1 | I2 | I3 | I4 | I5 | I6 |  |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| 1·I1 | 1·I2 | 1·I3 | 0 | 0 | 0 | = 0 
| 0 | 0 | -1·I3 | 1·I4 | 1·I5 | 0 | = 0 
| 0 | 1·I2 | 0 | 1·I4 | 0 | -1·I6 | = 0 
| 0 | 25·I2 | -5·I3 | -10·I4 | 0 | 0 | = 0 
| 0 | 0 | 0 | 10·I4 | -70·I5 | 8·I6 | = 0 
| 0 | 0 | 5·I3 | 0 | 70·I5 | 0 | = 180 

##### **V.** Meter tudo no scilab/matlab/octave

**Setup dos dados:**

```octave
A = [ 
  1 1 1 0 0 0
  0 0 -1 1 1 0 
  0 1 0 1 0 -1  
  0 25 -5 -10 0 0 
  0 0 0 10 -70 8 
  0 0 5 0 70 0
]

 b = [0;0;0;0;0;180]
```

**Como obter os resultados:**

A \* x  = b <=>, sendo x as incognitas I*X* como I1, I2 etc

<=> x = b / A

<=> x = 1 / A \* b

<=> x = A^(-1) * b


logo na formula da calculadora escrevemos `A^-1 * b`

e assim obtemos:

I1 = -12

I2 = 4

I3 = 8

I4 = 6

I5 = 2

I6 = 10

##### **VI.** Solução

P = V·I1 = 180·I1 = 180·12 = 2160W = 2.16 kW

#### b) Metodo das malhas

##### **I.** Identificar as malhas simples
![](A4E8fig1nodesSimples.png)

##### II. Identificar correntes fictícias (correntes de malha)
![](A4E8fig1comMalhas.png)

##### III. Aplicar a lei das malhas às malhas simples

m1 : 25·I1 + 10·(I1-I3) + 5·(I1 - I2) = 0

m2: 5·(I2 - I1) + 70·(I2 - I3) - 180 = 0
 
m3: 10·(I3 - I1) + 8·(I3) + 70·(I3 - I2) = 0

| I1 | I2 | I3 | |
|:-:|:-:|:-:|:-:|
|25+10+5(40) | - 5 | - 10 | = 0
| -5 | 5+70(75) | -70 | = 180
| -10 | -70 | 10+8+70(88) | = 0

##### IV. Calculos

```octave
A = [
   40 -5 -10 
   -5 75 -70 
   -10 -70 88 
] 

b = [0;180;0]

resultado = A^-1 * b
```

###### Resultados
```octave
 resultado  = 

   4. 
   12.
   10.
```

I1 = 4A
I2 = 12A
I3 = 10A

P = -V·I2 = -180 · 12 = -2160W = -2.16kW

#### c) Metodo das tensões nodais

##### I. Identificar nós essenciais
![](A4E8fig1nodesSimples.png)

##### II. Identificar nó de referência (nó com + ligações)
É o nó D.

##### III. Identificar tensões nodais (quedas de tensão dos nós essenciais não de referência para o nó de referência)

![](A4E8fig1comTensoesNodais.png)

##### IV. Aplicar a lei dos nós aos nós essenciais não de referência

![](A4E8fig1leisDosNos.png)

Nó A: I1 + I2 + I3 = 0
Nó B: I3 = I5 + I4
Nó C: I5 + I2 = I6

##### V. Relacionar as correntes com as tensões nodais (Lei das malhas)

I1 = ? → VA = 180


25 · I2 + VC - VA = 0 →  I2 = ( VA - VC ) / 25

5 · I3 + VB - VA = 0 → I3 = ( VA - VB ) / 5

I4 = VB / 70

10 · I5 + VC - VB = 0 → I5  = ( VB - VC ) /  10

I6 = VC / 8

##### VI. Substituir correntes pelas tensões nodais (substituir V em IV)


` `


**Nó A:** I1 + ( VA - VC ) / 25 + ( VA - VB ) / 5 = 0

<=> I1 + VA/25 - VC/25 + VA/5 - VB/5 = 0

<=> I1  - VB/5  - VC/25 = -180·(1/25+ 1/5)

` `

**Nó B:** ( VA - VB ) / 5 = ( VB - VC ) /  10 + VB / 70 <=>

<=> VA/5 -VB/5 = VB/10 - VC/10 + VB/70

<=> VA/5 + VB·(-1/5 - 1/10 - 1/70) + VB/10 = 0

<=> VB·(-1/5 - 1/10 - 1/70) + VB/10 = -180/5

` `

**Nó C:** ( VB - VC ) /  10 + ( VA - VC ) / 25 = VC / 8 <=>

<=> VB/10 - VC/10 + VA/25 - VC/25 = VC/8 <=>

<=> VA/25 + VB/10 + VC·( -1/10 -1/25 - 1/8) = 0 <=>

<=> VB/10 + VC·( -1/10 -1/25 - 1/8) = -180/25


```

```


##### VII. Calculos e resultados


```octave
A = [ 
  1 -1/5 -1/25 
  0 -1/5-1/10-1/70 1/10 
  0 1/10 -1/10-1/25-1/8 
] 

b = [ 
  -180*(1/25+1/5) 
  -180/5 
  -180/25 
] 

resultado = A^-1*b

```

I1 = -12
I2 = 140
I3 = 80

P - V·I1 = 180 · (- 12) = -2160 W = -2.16 kW

