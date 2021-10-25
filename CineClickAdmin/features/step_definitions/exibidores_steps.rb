Dado('que esteja logado como {string} e {string} e seleciono exibidores') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[14]/a").click
end
  
Quando('seleciono um exibidor') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[3]/div[1]").click

end
  
Então('valido que será exibido as informações do exibidor') do
    expect(page).to have_text "Ficha do Exibidor"
end
  
Quando('seleciono um exibidor e edito suas informações') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[5]/div[1]").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div[1]/ul/li[2]/a").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/form/div[1]/div[1]/div/input[2]").click
    find(:xpath, "/html/body/div[2]/div[2]/div/div[2]/div/span[34]").click
    click_button "Salvar"
end
  
Então('valido que as alterações foram feitas com sucesso') do
    expect(page).to have_xpath "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/form/div[1]/div[1]/div/input[2]" 
end
  
Quando('seleciono novo exibidor e preencho os campos') do
    click_button "Novo exibidor"
    name = Faker::FunnyName.name
    find("#name").set name
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div[1]/ul/li[2]/a").click
    click_button "Salvar"
end
  
Então('valido que foi criado com sucesso') do
    #expect(page).to have_text "Ficha do Exibidor"
end
  
Quando('digito um nome do exibidor') do
   find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div/div[1]/div/div/input").set "Moviecom"
    click_button "Pesquisar"
end
  
Então('valido que está sendo exibido o exibidor pesquisado') do
    expect(page).to have_xpath "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div/div[1]"
end