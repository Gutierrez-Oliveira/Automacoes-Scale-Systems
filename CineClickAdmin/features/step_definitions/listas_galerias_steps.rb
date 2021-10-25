Dado('que esteja logado como {string} e {string} e seleciono listas\/galerias') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[6]/a/div/span").click
end
  
Quando('seleciono criar lista e preencho os campos') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[2]/div[1]/div/div[2]/div/button").click
    find(:xpath, "/html/body/div[4]/div/div[1]/div/div/div[2]/div/div[2]/div/button").click
    find("#titleVertical").set "Lista e galerias Teste"
    find("#subtitleVertical").set "Subtitulo teste"
    find("#authorVertical").set "Gutierrez"
    click_button "Adicionar imagem"
    find(:xpath, "/html/body/div[5]/div/div[1]/div/div/div[2]/div/div[1]/div/input").set "teste"
    find(:xpath, "/html/body/div[5]/div/div[1]/div/div/div[2]/div/div[2]/div/div[1]/div/img").click
    find("#imageDescriptionVertical").set "Descrição da imagem"
    find(:xpath, "/html/body/div[5]/div/div[1]/div/div/div[2]/button").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div[1]/div[2]/form/div/div[6]/div/div[2]/div[2]/div[2]/div").set "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div[2]/ul/li[2]/a").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/form/div[6]/div/div/div/div[1]/div[1]").set "notícia"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/form/div[6]/div/div/div/div[1]/div[1]/div[1]/div[1]").click
end
  
Então('valido que foi criada com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end