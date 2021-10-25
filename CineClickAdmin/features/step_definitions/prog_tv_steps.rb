Dado('que esteja logado como {string} e {string} e seleciono programação de tv') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
end
  
Quando('seleciono uma programação') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que está sendo exibido suas informações') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono uma programação e edito as informações') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que foi editado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono nova programação de tv e preencho os campos') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que a programação de tv foi criada com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono a data inicio e fim') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido as programações da data selecionada') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono um canal') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido a programação do canal pesquisado') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono filme') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido a programação do filme selecionado') do
    pending # Write code here that turns the phrase above into concrete actions
end