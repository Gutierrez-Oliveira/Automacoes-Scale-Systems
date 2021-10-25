Dado('que esteja logado como {string} e {string} e seleciono artistas') do |email, password|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[8]").click
end
  
Quando('seleciono novo artista e preencho os campos necessários') do
    click_button "Novo artista"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[1]/div/div/input").set "Ator de Teste"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[2]/div/div/input").set "Nome completo do ator teste"
    find("#birthDate").set "15011996"
    find("#address").set "Carapicuíba"
    find("#height").set "1,77"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/form/div/div[10]/div/div[3]/div[2]/div").set "Resumo do ator teste"
    click_button "Adicionar imagem"
    find(:xpath, "/html/body/div[3]/div/div[1]/div/div/div[2]/div/div[1]/div/input").set "tom cruise"
    find(:xpath, "/html/body/div[3]/div/div[1]/div/div/div[2]/div/div[2]/div/div[2]/div/img").click
    find("#imageDescriptionVertical").set "Tom Cruise"
    find(:xpath, "/html/body/div[3]/div/div[1]/div/div/div[2]/button").click

    
end
  
Então('valido que o artista foi criado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono um artista para abrir as informações') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que suas informações seja exibido') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('digito o nome do artista') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que está sendo exibido o artista pesquisado') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono filtro e digito o nome e status') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que está sendo exibido os artistas com os dados do filtro') do
    pending # Write code here that turns the phrase above into concrete actions
end