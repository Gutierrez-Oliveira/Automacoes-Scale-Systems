Dado('que esteja logado como {string} e {string} e seleciono usuários') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
end
  
Quando('seleciono um usuário para exibir suas informações') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que as informações estão sendo exibidas') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono um usuário e faço alterações') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que o usuário foi editado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono novo usuário') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('preencho os capos e adiciono suas permissões') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que o usuário foi criado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('digito o nome de um usuário') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('vlaido que será exibido o usuário pesquisado') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono o filtro cargos') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido apenas usuários do cargo selecionado') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono o filtro status') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido apenas usuários dp status selecionado') do
    pending # Write code here that turns the phrase above into concrete actions
end