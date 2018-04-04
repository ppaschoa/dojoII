class Deletar < SitePrism::Page

	element :atividade, :xpath, '//*[@id="grouptab_3"]'
	element :tasks, :xpath, '//*[@id="moduleTab_6_Tasks"]'
	element :escolher, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a' #clica na primeira task da lista
	element :ação, :xpath, '//*[@id="tab-actions"]/a'
	element :deletar, 'input#delete_button'

	def deletandotask
		atividade.click
		tasks.click
		escolher.click
		ação.click
		deletar.click
		
	end

end