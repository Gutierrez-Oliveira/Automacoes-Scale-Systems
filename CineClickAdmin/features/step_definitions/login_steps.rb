Dado('que esteja na tela de login') do
visit "/login"
end
  
Quando('preencho com as seguintes credenciais {string} e {string}') do |email, password|
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set email
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set password
    click_button "Entrar"
end

Então('valido que foi logado com sucesso') do
    expect(page).to have_xpath "//*[@id='root']/div/div[2]/div[2]/ul/li[1]/a/div/span"
    expect(page).to have_text "Minha conta"
end
  
Quando('preencho com email inválido {string} e {string}') do |email, password|
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set email
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set password
    click_button "Entrar"
end
  
Então('valido que será exibido um alerta de usuário\/senha inválido') do
    expect(page).to have_xpath "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[3]/div/span"
    expect(page).to have_text "Usuário e/ou senha inválidos."
end