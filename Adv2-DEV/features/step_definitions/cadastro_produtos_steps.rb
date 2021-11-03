Quando('seleciono novo produto e preencho os campos') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[5]/div/a/span[2]").click
    click_button "Novo Produto"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/span/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set "Teste"
    find(:xpath, "//*[@id='vs1__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs1__option-0']").click
    find(:xpath, "//*[@id='vs3__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs3__option-5']").click
    click_button "Salvar"

end
  
Então('valido que o produto foi criado') do
    expect(page).to have_text "Lista de Produtos"
end
  
Quando('seleciono produtos e vejo seus detalhes') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[5]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[2]/div[1]/div/div/div/header/div/input").set "cine"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[2]/div[1]/div/div/div/div/div[1]/table/tr[3]/td[6]/span/a/span").click
end
  
Então('valido que suas informações estão sendo exibidos') do 
    expect(page).to have_xpath ("//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[1]/div/div[1]/div/div/form/span/div/div[1]/div[1]/div/div[2]/div/p")
end
