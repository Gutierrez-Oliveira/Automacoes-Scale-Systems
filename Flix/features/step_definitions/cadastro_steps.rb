Dado('que acesse a página de cadastro') do
    visit "/"
    find(:xpath, "//*[@id='navbarNav']/ul/li[4]/div/a").click
    find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/p/a/strong").click
end
  
Quando('preencho os campos obrigatórios') do
    name = Faker::Name.name
    email = Faker::Internet.free_email
    find("#name").set name
    find("#email").set email
    find("#password").set "asdasd"
    find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div/button[2]").click
end
  
Então('valido que o cadastro foi criado com sucesso') do
    expect(page).to have_text "Você ainda não possui pedidos"
end
  
Quando('preencho os campos e e-mail inválido') do
    name = Faker::Name.name
    find("#name").set name
    find("#email").set "testeinvalido$gmail.com"
    find("#password").set "asdasd"
    find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div/button[2]").click
end
  
Então('valido que será exibido um alerta de e-mail inválido') do
    expect(page).to have_text "Endereço de e-mail inválido"
end
  
Quando('preencho os campos e senha inválida') do
    name = Faker::Name.name
    email = Faker::Internet.free_email
    find("#name").set name
    find("#email").set email
    find("#password").set "   "
    find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div/button[2]").click
end
  
Então('valido que será exibido um alerta de senha inválida') do
    expect(page).to have_text "Senha não informada"
end