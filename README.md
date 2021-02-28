# adder
Somador em VHDL para teste do fluxo digital com front-end (ghdl + GTKwave) e back-end (openlane).

## Definição da tarefa
1. Testar o fluxo GHDL + GTKWave (Front-end) usando somador completo (Pode utilizar a referência http://ghdl.free.fr/ghdl/A-full-adder.html)
2. Utilizar Yosys + GHDL para converter o código para um .v (Verilog) equivalente, de modo a utilizar no fluxo openlane. (Ver e-mail e referências com write_verilog: https://github.com/ghdl/ghdl/issues/1174)
3. Utilizar o openlane (Back-end) para gerar o layout (.gds) por meio do .v (design file). Refs: https://github.com/britovski/vsdOpenLANE e https://github.com/efabless/openlane
4. Documentar no repositório.

## Somador

![img](.github/design.svg)

O sistema consistiu na implementação do clássico projeto de somador digital.

### Arquivos

Arquivo    | Descrição
---------- | ------
full_adder | Descrição do comportamento do clássico circuito somador-completo.
full_adder_tb  | Testbench do somador completo.
adder  | Decrição de um somador clássico de 8 bits, implementado a partir do somador completo.
adder_tb  | Testbench do somador de 8 bits.

### Simulações

#### Requisitos

- [GHDL](http://ghdl.free.fr/)

#### Procedimento

```bash

# Análise dos arquivos de descrição
$ ghdl -a ./src/vhdl/full_adder.vhdl
$ ghdl -a ./src/vhdl/adder.vhdl

# Análise dos arquivos de testes
$ ghdl -a ./src/vhdl/full_tb.vhdl
$ ghdl -a ./src/vhdl/adder_tb.vhdl

# Elaboração de unidades de testes
$ ghdl -e full_adder_tb
$ ghdl -e adder_tb

# Executar simulação e exportar formas de ondas
$ ghdl -r full_adder_tb --wave=./waves/full_adder_tb.ghw
$ ghdl -r adder_tb --wave=./waves/adder_tb.ghw

```

### Formas de ondas

#### Requisitos

- [GTKWave](http://gtkwave.sourceforge.net/)

#### Procedimento

```bash 

# full_adder
$ gtkwave ./waves/full_adder_tb.ghw

# adder
$ gtkwave ./waves/adder_tb.ghw

```

#### Screenshots

![img](.github/full_adder.png)

![img](.github/adder_tb.png)

### VHDL -> Verilog

#### Requisitos

- [Yosys](http://www.clifford.at/yosys/)
- [GHDL](http://ghdl.free.fr/)
- [ghdl-yosys-plugin](https://github.com/ghdl/ghdl-yosys-plugin)

#### Procedimento

```bash

# full_adder
$ yosys -m ghdl -p 'ghdl ./src/vhdl/full_adder.vhdl -e full_adder; write_verilog full_adder.v'

# adder
$ yosys -m ghdl -p 'ghdl ./src/vhdl/adder.vhdl -e adder; write_verilog adder.v'

```

#### Observações

Devido a problemas durante a instalação do [ghdl-yosys-plugin](https://github.com/ghdl/ghdl-yosys-plugin), a imagem [hdlc/ghdl:yosys](https://hub.docker.com/r/hdlc/ghdl/tags) e o [Docker](https://www.docker.com/) foram utilizados para a execução do procedimento acima.

### Verilog -> GDSII

#### Requisitos

- [Openlane](https://github.com/efabless/openlane)
- [Docker](https://www.docker.com/)

#### Procedimento

```bash

```
