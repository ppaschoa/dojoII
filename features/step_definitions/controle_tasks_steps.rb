
Dado("que estou logada no sistema") do
  @logando = Criar.new
  @logando.load

  @logando.login("will", "will")
	
end

Quando("quero cadastrar nova task") do
	@logando.cadastrar("Criar Tarefa para Dojo II", "08/03/2018", "15/03/2018") #"Devemos criar uma task")

end 

Então(/^atribuo a “([^“]*)“$/) do |arg1|
  @logando.atribuir(usuario)

end

E("crio uma nova task") do
  @logando.salvar

end


Quando("quero editar uma nova task") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("salvo as edições efetuadas") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("quero deletar uma task anteriormente criada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("confirmo a exclusão da task selecionada") do
  pending # Write code here that turns the phrase above into concrete actions
end
