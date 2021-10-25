Dado('que esteja na tela de login') do
    visit "/"
end
  
Quando('submeto minhas credenciais {string} e {string}') do |email, password|
    find(:xpath, "//*[@id='app']/div/div/div/div/div[1]/div/div/div[2]/div/div[2]/div/input").set email
    find(:xpath, "//*[@id='app']/div/div/div/div/div[1]/div/div/div[2]/div/div[3]/div/input").set password
    click_button "Entrar"
end
  
Então('valido que foi efetuado o login com sucesso') do
    expect(page).to have_text "Análises de crédito a expirar"
end
  
Quando('submeto minhas credenciais inválidas {string} e {string}') do |email, password|
    find(:xpath, "//*[@id='app']/div/div/div/div/div[1]/div/div/div[2]/div/div[2]/div/input").set email
    find(:xpath, "//*[@id='app']/div/div/div/div/div[1]/div/div/div[2]/div/div[3]/div/input").set password
    click_button "Entrar"
end
  
Então('valido que será exibido alerta de usuário ou senhas inválido') do 
    expect(page).to have_text "Usuário e/ou senha inválidos"
end
