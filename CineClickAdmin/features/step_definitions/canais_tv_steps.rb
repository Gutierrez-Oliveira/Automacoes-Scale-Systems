Dado('que esteja logado como {string} e {string} e seleciono canais de tv') do |email, password|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set email
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set password
    click_button "Entrar"
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[16]/a/div/span").click
end
  
Quando('seleciono um canal de tv') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[9]/div[1]").click

end
  
Então('valido que será exibido as informações do canal de tv') do
    expect(page).to have_text "Ficha do Canal de TV"
end
  
Quando('seleciono novo canal de tv e preencho os campos') do
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[16]/a/div/span").click
    click_button "Novo canal de TV"
    name = Faker::Name.name
    url = Faker::FunnyName.name
    find("#name").set name
    find("#url").set url
    find("#codeRevel").set name
    sleep 1
    click_button "Salvar"
end
  
Então('valido que será criado com sucesso') do
    expect(page).to have_text "Ficha do Canal de TV"
end
  
Quando('seleciono um canal de tv e edito as informações') do
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[16]/a/div/span").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div[2]/div[1]").click
    url = Faker::FunnyName.name
    find("#url").set url
    click_button "Salvar"
end
  
Então('valido que as edições foram salvas com sucesso') do
    expect(page).to have_text "Ficha do Canal de TV"
end
  
Quando('digito um canal de tv para pesquisar') do
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[16]/a/div/span").click
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div[2]/div/form/div/div[1]/div/div/input").set "Cultura"
    click_button "Pesquisar"
end
  
Então('valido que será exibido o canal de tv digitado') do
    expect(page).to have_xpath "//*[@id='root']/div/div[3]/div[2]/div[3]/div[1]/div/div/div/div/div/div[1]/div/div[3]/div[2]/div/div/div/div[1]"
end