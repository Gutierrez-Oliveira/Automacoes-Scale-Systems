Dado('que esteja logado como {string} e {string} e seleciono cinemas') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
end
  
Quando('seleciono um cinema') do
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[15]/a/div/span").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[1]/div[1]").click    
end
  
Então('valido que as informações do cinema esteja sendo exibido') do
    expect(page).to have_text "Ar-condicionado. - Acesso a deficientes físicos"
end
  
Quando('seleciono novo cinema e preencho os campos') do
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[15]/a/div/span").click
    click_button "Novo cinema"
    name = Faker::Name.name
    find("#name").set name
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[2]/div/div/div/div[1]").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[2]/div/div/div/div[1]/div[1]").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[3]/div/div/div/div[1]").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[3]/div/div/div/div[1]/div[1]").click
    find("#phone").set "11 95487-8787"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[8]/div/div[2]/div[2]/div").set "Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div[1]/ul/li[2]/a").click
    find("#zipCode").set "01317-000"
    find("#address").set "Av. Brigadeiro Luís Antônio"
    find("#district").set "República"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[4]/div/div/div/div[1]").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[4]/div/div/div/div[1]/div[1]").click
    sleep 5
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div[1]/ul/li[4]/a").click
    find("#slug").set "Teste Automação"
    click_button "Salvar"
end
  
Então('valido que o cinema foi criado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('digito o nome do cinema') do
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[15]/a/div/span").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div/div[1]/div/div/input").set "cinemark"
    click_button "Pesquisar"
end
  
Então('valido que o resultado será exibido com o nome pesquisado') do
    expect(page).tp have_xpath "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[10]/div[1]"
end
  
Quando('filtro um exibidor') do
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[15]/a/div/span").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div/div[2]/div/div/div/div/div[1]").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div/div[2]/div/div/div/div/div[1]/div[1]").click
    click_button "Pesquisar"
end
  
Então('valido que será exibido os cinemas do exibidor selecionado') do
    expect(page).to have_xpath "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[5]/div[1]"
end
  
Quando('filtro por cidade') do
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[15]/a/div/span").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div/div[3]/div/div/div/div/div[1]").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div/div[3]/div/div/div/div/div[1]/div[1]").click
    click_button "Pesquisar"

end
  
Então('valido que será exibido os cinemas da cidade selecionado') do
    expect(page).to have_xpath "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[1]/div[1]"
end