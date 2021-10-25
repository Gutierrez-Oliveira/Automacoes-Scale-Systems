Dado('que esteja logado como {string} e {string} e seleciono filmes') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[9]/a/div").click
end
  
Quando('seleciono um filme') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[8]/div[3]/div/div/span[1]").click

end
  
Então('valido que está exibindo os detalhes do filme') do
    expect(page).to have_text "Sobre o filme"

end
  
# Quando('seleciono novo filme e preencho os campos') do
#     click_button "Novo filme"
#     find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div[1]/div[2]/form/div/div[1]/div/div/input").set "Army of the Dead: Invasão em Las Vegas"
#     find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div[1]/div[2]/form/div/div[2]/div/div/input").set "Army of the Dead"
#     find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div[1]/div[2]/form/div/div[3]/div/div/div/div[1]").click
#     find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div[1]/div[2]/form/div/div[3]/div/div/div/div[1]/div[1]").click # Selecionar Genêro
#     find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div[1]/div[2]/form/div/div[4]/div/div/div[1]/div[2]/div").click
#     #seleciona segundo gênero
#     find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div[1]/div[2]/form/div/div[5]/div/div/div[1]/div[2]/div").click
#     #seleciona Países
#     find(:xpath, "//*[@id='productionYear']").set "2021"
#     find("#releaseDate").set "20072021"
#     find("#duration").set "120"
#     click_button "Adicionar imagem"
#     find(:xpath, "/html/body/div[3]/div/div[1]/div/div/div[2]/div/div[1]/div/input").set "mortal kombat"
#     find(:xpath, "/html/body/div[3]/div/div[1]/div/div/div[2]/div/div[2]/div/div[6]/div[1]/div[1]/div/div/div").click
#     find("#imageDescriptionVertical").set "Teste"
#     find(:xpath, "/html/body/div[3]/div/div[1]/div/div/div[2]/button").click
# end
  
Quando('digito o nome do filme') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div[1]/div[1]/div/div/input").set "Coringa"
    click_button "Pesquisar"
end
  
Então('valido que o filme exibido foi o pesquisado') do
    expect(page).to have_xpath "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div/div[3]/div/div/span[1]"
end
  
Quando('digito o ano do filme') do
    find(:xpath, "//*[@id='productionYear']").set "2019"
    click_button "Pesquisar"
end
  
Então('valido que será exibido apenas filmes do ano pesquisado') do
    expect(page).to have_xpath "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[2]/div[4]/div/div"
end
  
Quando('digito o título de um filme') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div/ul/li[2]/a").click
    find("#title").set "Batman"
    click_button "Filtrar"
end
  
Então('valido que será exibido resultados com o nome digitado') do
    expect(page).to have_text "BATMAN"
end
  
Quando('altero o filtro de status para rascunho') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div/ul/li[2]/a").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div[1]/div[2]/div/div/div/div[1]/div[1]/div[1]").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div[1]/div[2]/div/div/div/div[1]/div[1]/div[1]/div").click
end
  
Então('valido que será exibido os filmes com o status rascunho') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('altero o filtro de status para agendado') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div/ul/li[2]/a").click
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido os filmes com o status agendado') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('altero o filtro de status para arquivado') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div/ul/li[2]/a").click
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido os filmes com o status arquivado') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono o filtro de elenco e seleciono alguém') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div/ul/li[2]/a").click
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido os filmes com o elenco selecionando') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono o filtro de gênero') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div/ul/li[2]/a").click
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido os filmes do gênero selecionando') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono o filtro estúdio') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div/ul/li[2]/a").click
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido os filmes do estúdio selecionando') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono filtro data de estréia inicio e fim') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div/ul/li[2]/a").click
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido os filmes das datas selecionadas') do
    pending # Write code here that turns the phrase above into concrete actions
end