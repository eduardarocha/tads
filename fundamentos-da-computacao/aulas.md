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