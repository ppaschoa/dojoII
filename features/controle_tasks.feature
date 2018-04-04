#language: pt
#utf-8

Funcionalidade: Controle de tasks pelo sistema SuitCRM
	Eu como usuária do sistema
	Quero poder criar, editar e deletar tasks
	Para controlar tarefas e responsáveis de modo online


Contexto: usuário está logado no sistema
	Dado que estou logada no sistema

@cadastrar
Esquema do Cenário: cadastro de nova task
Quando quero cadastrar nova task
Então atribuo a <usuario>
E crio uma nova task
	Exemplos:
		|	usuario			|
		|	'Will Westin'	|
		|	'Sarah Smith'	|
		|	'Sally Bronsen'	|

@editar
Cenário: edição de task existente
Quando quero editar uma nova task
Então salvo as edições efetuadas

@deletar
Cenário: deleção de uma task existente 
Quando quero deletar uma task anteriormente criada
Então confirmo a exclusão da task selecionada
 
