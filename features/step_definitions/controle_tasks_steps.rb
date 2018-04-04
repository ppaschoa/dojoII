   
Dado("que estou logada no sistema") do
  @logando = Criar.new
  @logando.load

  @logando.login("will", "will")
	
end

Quando("quero cadastrar nova task") do
	@logando.cadastrar("Criar Tarefa para Dojo II", "03/08/2018", "03/22/2018") #"Devemos criar uma task")

end 

#Então(/^atribuo a “([^“]*)“$/) do |arg1|
 Então("atribuo a {string}") do |usuario|
 @logando.atribuir(usuario)
end


E("crio uma nova task") do
  @logando.salvando

end


Quando("quero editar uma nova task") do
  @editando = Editar.new
  
  @editando.editprioridade("Medium")

end

Então("salvo as edições efetuadas") do
 @editando.salvaed
 
end

Quando("quero deletar uma task anteriormente criada") do
  @deletando = Deletar.new
  @deletando.deletandotask
end

Então("confirmo a exclusão da task selecionada") do
  page.driver.browser.switch_to.alert.accept
  
end