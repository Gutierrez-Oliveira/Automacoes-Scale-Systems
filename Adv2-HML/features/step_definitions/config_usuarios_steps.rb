Quando('seleciono novo usuário e preencho os campos') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[8]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[8]/ul/li[1]/div/a").click
    click_button "Novo Usuário"

    email = Faker::Internet.free_email
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div/div[2]/div/div/input").set email
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div/div[4]/div/div/input").set "Teste"
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div/div[6]/div/div/input").set email
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[3]/div/div/div[1]/div[2]/button").click
    click_button "Salvar"
end
  
Então('valido que foi criado novo usuário') do
    expect(page).to have_text "Lista de usuários"
end
  
Quando('seleciono um usuário') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[8]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[8]/ul/li[1]/div/a").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div/header/div/input").set "Gutierrez"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div[1]/table/tr[3]/td[5]/span/a/span").click
end
  
Então('valido que será exibido os detalhes do usuário') do
    expect(page).to have_text "Detalhes do usuário"
end