class Criar < SitePrism::Page

set_url "https://demo.suiteondemand.com"

element :nomeusuario, 'input#user_name'
element :senha, 'input#username_password'
element :submeter, 'input#bigbutton'
element :dropcriar, :xpath, '//*[@id="quickcreatetop"]/a'
element :criartask, :xpath, '//*[@id="quickcreatetop"]/ul/li[7]/a'
element :nometarefa, 'input#name'
element :datainicio, 'input#date_start_date'
element :datafim, 'input#date_due_date'
element :botao_escolher, 'button#btn_assigned_user_name'
element :atribuir_name, 'input#assigned_user_name'
element :salvar, :xpath, '//*[@id="SAVE"]', match: :first



	def login (nomeuser, password)
		nomeusuario.set(nomeuser)
		senha.set(password)
		submeter.click
	end
 

	def cadastrar (tarefa, inicio, fim) #descr)
		dropcriar.click
		criartask.click
		nometarefa.set(tarefa)
		datainicio.set(inicio)
		datafim.set(fim)
		#descr.set(descr)
				
	end


	def atribuir (add)
		atribuir_name.set(add)
		
	end

	def salvando
		#page.first('input#SAVE.button.primary').click
		salvar.click
		
	end

	def mensagem
		assert_text ("Criar Tarefa para Dojo II")
		#//*[@id="pagecontent"]/div[1]/h2
	end

end