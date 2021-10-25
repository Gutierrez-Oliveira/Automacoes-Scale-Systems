Dado('que esteja logado como {string} e {string} e seleciono reviews\/críticas') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[6]/a").click
end
  
Quando('crio uma nova crítica e preencho todos os campos') do
    click_button "Novo item"
    find(:xpath, "/html/body/div[4]/div/div[1]/div/div/div[2]/div/div[3]/div/button").click
    find("#titleVertical").set "Lista teste"
    find("#subtitleVertical").set "Sub título de teste"
    find("#authorVertical").set "Eu mesmo"
    click_button "Adicionar imagem"
    find(:xpath, "/html/body/div[5]/div/div[1]/div/div/div[2]/div/div[1]/div/input").set "king"
    sleep 2
    find(:xpath, "/html/body/div[5]/div/div[1]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/img").click
    find("#imageDescriptionVertical").set "Descrição teste"
    find(:xpath, "/html/body/div[5]/div/div[1]/div/div/div[2]/button").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div[1]/div[2]/form/div/div[6]/div/div[2]/div[2]/div[2]/div").set "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti"
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/div[2]/ul/li[2]/a").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/form/div[6]/div/div/div/div[1]/div[1]").set "King Kong"
    find(:xpath , "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/form/div[6]/div/div/div/div[1]/div[1]/div[1]/div[1]").click
    click_button "Publicar"
    click_button "Publicar"

end
  
Então('valido que a crítica foi criada com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono uma crítica') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que será exibido a crítica') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono excluir') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que foi excluido com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono para excluir') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que não será excluído') do
    pending # Write code here that turns the phrase above into concrete actions
end