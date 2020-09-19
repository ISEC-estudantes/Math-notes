

> # **Aulas Teoricas**

# Aula 3

    1. Componentes
        
        a. Passivos - Retiram energia ao circuito (transformando em)
        
            i. Resistencia (calor)
![](img/T03resistencia.png)

            ii. Condensador (campo eletrico)
![](img/T03condensador.png)
            
            iii. Bobine (campo magnetico)   
![](img/T03bobine.png)

        b. Activos - Fornecem energia ao circuito
        
            i. Fontes de tensão
![](img/T03fonteTensao.png)
            
            ii. Fontes de corrente
![](img/T03fonteCorrente.png)

    2. Análise Circuitos
        
        1. Circuitos Simples (circuitos com uma fonte)
        
            a. Ferramentas:
                
                i. Fórmula do divisor de tensão.
![](img/T03divisorTensao.png)
![](img/T03divisorTensaoDemo.png)

                ii. Fórmula do divisor da corrente.
                
![](img/T03divisorCorrente.png)
                
                iii. Associaão de resistências.
                    
                    Resistências em série.
![](img/T03resistenciaSerie.png)
![](img/T03resistenciaSerieDemo.png)

                    Resistências em paralelo.
![](img/T03resistenciaParalelo.png)
![](img/T03resistenciaParaleloDemo.png)
                        
                    
            

### Aula 4

**Lei dos nós**

O sumatorio das correntes que entram é igual ao sumatirio das correntes que saiem de um nó.

![](img/T04leiDosNos.png)

**Lei das Malhas**

O sumatorio das quedas de tensão numa malha é nulo.

![](img/T04leiDasMalhas.png)

    1. Circuitos Complexos

![](img/T04circuito.png)


        a. Técnicas de análises  de circuitos
        
            i. Método direto
            
![](img/T04metodoDireto.png)           

![](img/T04circuitoDireto.png) 
                
            ii. Método das malhas
            
![](img/T04metodoDasMalhas.png)

![](img/T04circuitoMalhas.png)

            iii. Métodos nodais

![](img/T04metodoDasTensoesNodaisp1.png)

![](img/T04metodoDasTensoesNodaisp2.png)

![](img/T04circuitoNodais.png)
            
### Aula 5

#### Análise de circuitos complexos: Casos particulares
        
    Conceito de super-malha: 

![Super-Malha](T05supermalha1.png)
![Super-Malha](T05supermalha2.png)

Quando entre duas malhas simples existe um ramo com uma fonte de corrente.
    
- Aplicar método das malhas
    
- Aplicar a lei das malhas à super-malha.

- Relacionar as correntes de malha com a corrente do ramo contido na super-malha.

    Resolvendo

    * 1º Super-malha:
    
        ![](img/T05supermalha1ComCorrentesFicticias.png)

        
        
        $- V1 + R1 · IA + R3 * IB + V2 = 0$ (1)
        

        $I1 = IA - IB$ (2)
        


    - 2º Super-Malha:
    
        ![](img/T05supermalha2ComCorrentesFicticias.png)

        $- V3 + R4 · IA + R6 · IB + R8 · IC + V4 = 0$ (1)

        $I2 = IA - IB$(2)

        $I3 = IB - IC$(3)

- **Conceito de super-nó:**

    Quando entre dois nós essenciais existe um ramo com uma fonte de tensão.

  - Aplicar método das tensões nodais.
  - Aplicar a lei dos nós ao super-nó.
  - Relacionar as quedas de tensão nodal com a tensão nodal com a tensão entre os nós que compõem o super-nó.
  
**Super-nós:**

- **UM SUPER-NÓ NÃO PODE SER NÓ DE REFERÊNCIA**

        Super-nó:

    
![](img/)

### Aula 6 - Teoremas de simplificaão de circuitos (sistemas lineares)

- **Teorema de Thevenin** - permite converter um circuito complexo num circuito simples composto por uma fonte de tensão (tensão de thevenin) e uma resistência (resistência de thevenin).

- **Teorema de sobreposição** - permite converter um circuito complexo num conjunto de diversos circuitos simples.

    -   Analisar cada um dos ciruitos simples.
    -   Adicionar os contributos individuais de cada circuito simples.


Sistema de eletrónico (fonte de tensão, fontes de corrente, resistências, condesadores e as bobinas).

- Memória.

- Establidade.

- Causais.

- Linearidade ( fontes de tensão, fonte de corrente e resistências)
    
    um circuito com um díodo ou transistors é um exemplo de um circuito não linear porque pode ou não transportar corrente dependendo da corrente/volagem

    
    - Exemplo
        
        ![](img/T06teoremadethevenin.png)

### Aula 7 - Explicação teorica de diodos

[Wikipedia - Diodo semicondutor](https://pt.wikipedia.org/wiki/Diodo_semicondutor)

### Aula 8 - Analise de circuitos com diodos

![](img/T08comportamentodeumdiodo.png)

Análise de circuitos com díodos: 

**1º Identificar o nº máximo de estados.**

Nº máximo de estados é 2 elevados ao numero de díodos

Exemplos:

- 1 díodo = 2¹ = 2 ESTADOS
    
    1. Diodo conduz

    2.  Diodo n/conduz

- 2 díodos (D1,D2) = 2² = 4 ESTADOS

    1.  D1 conduz e D2 conduz

    1.  D1 conduz e D2 n/conduz

    1.  D1 n/conduz e D2 n/conduz

    1.  D1 n/conduz e D2 conduz
    
**2º Analisar todos os estados de forma individual**

1. Começar por analisar o estado em que mais dóiodos conduzem.

    1. Impor a condução do díodo (partir do pressuposto que o díodo conduz)

    2. Substituir o díodo pelo circuito equivalente em condução.

    3. Impor o sentido correto para a corrente.A corrente no díodo deve ter o sentido do ânodo para o cátodo.

    4. Impor a condição : Id > 0 -> obter a condição que determina a condução do díodo. Qual o valor da tensão de entrada que garante a condução do díodo.

        Identificar para que valores de tensão de entrada o díodo conduz.

    5. Relacionar a tensão de saída com a tensão de entrada (função transferência.)

2.  agregar os valores das equações/ condições obtidas para cada um dos estados numa só equação não linear - função transferência analítica.

3. Representar graficamente a função transferência.

4. representação temporal das formas de onda da tensão de entrada e de saída.

### Aula 9 - Continuação da aula 8

Análise de circuito com díodos (fontes de tensão alternada)

1. Identificar o nº de estados.
    
    1. Nº máximo de estados = 2 ^ (nº de díodos)
    
    2. Analisar individualmente todos os estados.
    
3. Começar por analisar o estado em que o díodo conduz (partir do pressuposto que o díodo conduz).
        
    1.  Substituir o díodo pelo circuito equivalente em condução
    
    
    
    2.  Impor o sentido correto para a corrente (A -> K)
    
    3.  Analisar o circuito utilizando a lei das malhas.
    
        ![](img/T09exemplo1.1.2.png)

        Rd = 100Ω
        
        Vo = 0,7V
        
    
    4. Relacionar a corrente do díodo (id) com a tensão de entrada do círcuito (vin).
        
        1. Substituir o díodo pelo circuito equivalente em n/condução.
        
        2. Analisar o circuito utilizando a lei das malhas.
        
        3. Determinar para que valores de vin o díodo n/conduz.
        
        4. Relacionar a tensão de sáida (vout) com tensão de entrada (Funcão tranferência)

    5. Juntar ambas as equações numa equação não  linear → função transferência analítica.
    
    6. Representar a função transferência graficamente.
    
    7. Representar as formas de onda da tensão de entrada e saída em função do tempo.
    
    
### Aula 10 - Transistors

Díodos e resistência:

- Passivos.

- Dois terminais.

Transístores:

- Ativos.

- Três terminais

- Aplicações (transistores):

    - Linear (potenciómetro controlado eletronicamente).
        
        - Fontes de alimentação lineares.
                
            É um dispositivo que limita a tensão, por exemplo podemos usar a divisão de tensão para obter uma fonte de 5V a partir de uma fonte de 12V com resistencias desta forma (graças ao divisor da tensão):
            
            ![](img/T10divisorDeTensaoFonte.png)
            
            A resistencia da fonte tem de ser ajustada diacordo com a resistencia do dispositivo divital para que se de sempre 5V
            
            ![](img/T10divisorDeTensaoFonte2.png)
            
            Para tal usa se o transistor para comtrolar digitalmente a reistencia R1.
            
            
                
        * Amplificador
           
           ![](img/T10Amplificador.png)
        
    - Corte/saturação ( interruptor ).
        - Fontes de alimentação comutadas.
        - Amplificadores comutadas ( classe D ).
        - Dispositivos digitais ( AND , OR , NOT , NAND , NOR ). 
    
      
- Transístores:
        
    - MOSFET - transístor de efeito de campo de óxido metálico semicondutor.
        
        Simbolo:
        
        ![](img/T10MOSFETcanalNSimbolo.png)
        
        Exemplo Funcional:
        
        ![](img/T10MOSFETexemploFuncionamento.png)
        
        - Ganho é reduzido ( não é uma boa solução para amplificadores).
        - Perdas reduzindas na comutação (interruptor).
    - BJT - transístor de bipolar de junção.
        - Ganho é mito elevado ( é uma boa solução para amplificadores )
        - Perdas elevadas na comutação ( não é uma boa solução para operar como interruptor )

    - Transístores Bipolares:
        - NPN
            
            Simbolo:
            
            ![](img/T10simboloNPN.png)
            
            Estrutura:
            
            ![](img/T10estruturaFisicaNPN.png)
        
        - PNP

            Simbolo:
        
            ![](img/T10simboloPNP.png)

            Estrutura:

            ![](img/T10estruturaFisicaPNP.png)
            
            
        - Discriçào:
        
            Emissor: fortemente dopada e de dimensão intermédia - emite.
            
            Base: fracamente dopada e de dimensão muito reduzida.
            
            Coletor: Dopagem intermédia e de dimensão muito grande.
            
    - Transístores BJT
        - Díodo emissor
        - Díodo coletor
        
    - Polarização - aplicação de uma tensão aos díodos (DE e DC) que compõe o transístor

        - DE e DC diretamente polarizado - região de saturação (interruptor fechado)

        - DE e DC inversamente polarizado - região de corte (interruptor aberto)

        - DE diretamente polarizado e  o DC inversamente polarizado - região ativa (linear) - amplificador.
        
    - Amplificador com transístor BJT (configurador):

        ![](img/T10amplificadorBJT.png)
            
    - Curva caracteristica transístor BJT na configuração em emissor-comum:
    
        1. Entrada
            
            A curva caracteristica é de um díodo porque é uma relação B com E
        
        2. Saída
        
### Aula 11 - Simulações de transístors

![](img/T11?????.png)

Simulações:

- Circuitos
    
    ![](img/T11Circuitos.png)
    
- Calculos
    
    ![](img/T11calculosP1.png)
    
    ![](img/T11calculosP2.png)
    
### Aula 12 - Analise de Amplificadores

![](img/T12analiseP1.png)

### Aula 13 - Amp-Op

 

