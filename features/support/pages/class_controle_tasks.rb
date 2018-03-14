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
#element :descr, 'textarea#description'
element :atribuido, 'input#assigned_user_name'
element :salvar, 'input#save'

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


	def atribuir (atribuir)
		atribuido.choose(atribuir)

	end

	def salvar
		salvar.click
	end

end	