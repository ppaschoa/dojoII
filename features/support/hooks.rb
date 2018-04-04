After ('@cadastrar') do 
 page.driver.browser.save_screenshot 'screenshot_cadastro.png'

end

After ('@editar') do 
 page.driver.browser.save_screenshot 'screenshot_edição.png'

end

After ('@deletar') do 
 page.driver.browser.save_screenshot 'screenshot_exclusão.png'

end