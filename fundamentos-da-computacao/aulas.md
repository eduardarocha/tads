# Sistemas Operacionais
## Windows XP (x32) - Raid 1e 0 / 10
* Arquivo ISO: "Windows_XP_SP3"

Criar máquina virtual:
* Windows XP 32 bits
* Disco rigido virtual
* VDI
* Dinamicamente alocado

Selcionar disco rigido de boot (arquivo ISO):
* Abrir/Procurar > Acrescentar > Escolher > Iniciar
Particionar espaço:
* Criar partição C: (tecla C) > Entrer (x3)

RAID
* Desligar a máquina
* Armazenamento > Controladora: IDE  > Acrescentar novo disco rigido (Ex: 2 discos de 10gb), icone HD cima > Conectar amarmazenamento > "Disco Rigido", icone HD baixo
* Painel de Controle > Ferramentas administrativas > Gerenciamento do computador > Gerenciamento de disco > (botão direito) Inicializar disco (Disco 1 e 2) > (botão direito) Converter em disco dinâmico, disco 1 e 2
* (botão direito) Novo volume > Extensivo ou Distribuído (se silmples, Ok em todas telas e formatação rapida) > Adicionar disco 1 e 2 para o lado direito da tela > Ok (x2), volume E: > Formatação rápida
	* Para excluir: (botão direito) Excluir volume(s)


## Linux Debian (x64)

Instalação - Particionamento de disco Manual (manualmente):
* Criação de partição #1 (swap): selecionar disco > "Particionar discos", sim, selecionar partição > Criar uma nova partição, selecionar tamanho da partição, inicio > primária > Área de troca (swap) > Finalizar a configuração de partição
* Criação de partição #2 (/): Partição primária > ext4
* Criação de partição #3 (/home): Partição primária > Home (sem mais configurações, pois são automáticas para ext4)
* Finalizar configurações > Escrever as mudanças nos discos, "sim"

# Infraestrutura de redes
## Cisco Packet Tracer
### Aula 01
1803d555bc77fd3e12af92d1f91d5a1eA
*Iperterminal
*Tellmat

Cisco Packet Tracer

Criando Rede LAM:


TOPOLOGIA FÍSICA - enlace cabeado

Conexão cabo cross = dispositivos iguais
Conexão cabo reto = dispositivos diferentes (RS-232)

SW-2960
- De 0/1 até 0/24 portas "Down", quando conectadas a partir da porta fast 0/1 até a 0/24 com um PC por cabo reto, fica "Up"
PC-PT
- Desktop > Terminal, para acessar o SW (SW tem sua própria interface-fast (placa de rede) assim como o PC, onde se dá a conexão do cabo)
- Terminal: > ping pc1 (resultado como "não há conexão lógica com este dispositivo")


TOPOLOGIA LÓGICA - atribuição estática de IP

Definindo um IP (enreço da rede): 192.168.0.0/24 (mascara classe C)
Brodcast: 192.168.0.255 (1 até 254 hots podem ser utilizados)

PC-1
- IP: 192.168.0.1
- Mask: 255.255.255.0
- Terminal: > ping 192.168.0.1 (agora há conexão lógica com o dispositivo referente ao IP atribuido)
PC-2
- IP: 192.168.0.2
- Mask: 255.255.255.0
PC-3
- IP: 192.168.0.3
- Mask: 255.255.255.0


SERVIDOR DHCP

Server-PT
- IP: 192.168.0.1
- Iniciando o serviço de DHCP:
	- Start IP adress: 192.168.0.100
PCPC-1
- IP: 192.168.0.108
	- OBS: IP: 192.254... atribuição quando DHCP não foi encontrado
PCPC-2
- IP: 192.168.0.109

PCPC-3
- IP: 192.168.0.110

### Aula 02
Router A 2621XM > Serial DCE > Router B 2621XM
Antes, adição física de WIC-2T nos aparelhos
No CLI de ambos:
> no
> enable
> conf t
> int s0/0
Router A: > ip add 192.168.0.249 255.255.255.252
Router B: > ip add 192.168.0.250 255.255.255.252
> no shut

Router A > FastEthernet0/0 > cabo reto > Switch A 2960XM > GigabitEthernet0/1
Router A > FastEthernet0/1 > cabo reto > Switch B 2960XM > GigabitEthernet0/1
Router B > FastEthernet0/0 > cabo reto > Switch C 2960XM > GigabitEthernet0/1
Router B > FastEthernet0/1 > cabo reto > Switch D 2960XM > GigabitEthernet0/1

Switch A > FastEthernet0/1 > cabo reto > PC A > FastEthernet0
Switch A > FastEthernet0/2 > cabo reto > PC B > FastEthernet0
Switch B > FastEthernet0/1 > cabo reto > PC C > FastEthernet0
Switch B > FastEthernet0/2 > cabo reto > PC D > FastEthernet0
Switch C > FastEthernet0/1 > cabo reto > PC E > FastEthernet0
Switch C > FastEthernet0/2 > cabo reto > PC F > FastEthernet0
Switch D > FastEthernet0/1 > cabo reto > PC G > FastEthernet0
Switch D > FastEthernet0/2 > cabo reto > PC H > FastEthernet0

No CLI de ambos Routers:
> enable
> conf t
Router A:
> int fa0/0
> ip add 192.168.1.254 255.255.255.0
> no shut
> int fa0/1
> ip add 192.168.2.254 255.255.255.0
Router B:
> int fa0/0
> ip add 192.168.8.254 255.255.255.0
> no shut
> int fa0/1
> ip add 192.168.9.254 255.255.255.0
> no shut

PC A > IP Configuration > IPv4: 192.168.1.1, Mask: 255.255.255.0, Gateway: 192.168.1.254
PC B > IP Configuration > IPv4: 192.168.1.2, Mask: 255.255.255.0, Gateway: 192.168.1.254
PC C > IP Configuration > IPv4: 192.168.2.1, Mask: 255.255.255.0, Gateway: 192.168.2.254
PC D > IP Configuration > IPv4: 192.168.2.2, Mask: 255.255.255.0, Gateway: 192.168.2.254

PC E > IP Configuration > IPv4: 192.168.8.1, Mask: 255.255.255.0, Gateway: 192.168.8.254
PC F > IP Configuration > IPv4: 192.168.8.2, Mask: 255.255.255.0, Gateway: 192.168.8.254
PC G > IP Configuration > IPv4: 192.168.9.1, Mask: 255.255.255.0, Gateway: 192.168.9.254
PC H > IP Configuration > IPv4: 192.168.9.2, Mask: 255.255.255.0, Gateway: 192.168.9.254

No CLI de ambos Routers:
> enable
> conf t
Router B:
> ip route 192.168.1.0 255.255.255.0 192.168.0.249
> ip route 192.168.2.0 255.255.255.0 192.168.0.249
> end
Router A:
> ip route 192.168.8.0 255.255.255.0 192.168.0.250
> ip route 192.168.9.0 255.255.255.0 192.168.0.250
> end