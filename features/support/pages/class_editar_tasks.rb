
class Editar < SitePrism::Page

	element :atividade, :xpath, '//*[@id="grouptab_3"]'
	element :tasks, :xpath, '//*[@id="moduleTab_6_Tasks"]'
	element :escolher, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a' #clica na primeira task da lista
	element :ação, :xpath, '//*[@id="tab-actions"]/a'
	element :editar, 'input#edit_button'
	element :prioridade, 'select#priority'#muda proridade para Medium
	element :salvaredit, 'input#SAVE', match: :first


	def editprioridade (mudaprioridade)
		atividade.click
		tasks.click
		escolher.click
		ação.click
		editar.click
		prioridade.select(mudaprioridade)
		
	end

	def salvaed
		salvaredit.click
		assert_text("Medium")
	end

end 

