 Quando('seleciono para criar nova tabela') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[5]/div/a/span[2]").click
    click_button "Nova Tabela"
    sleep 5
end
  
Quando('preencho os campos') do
    name = Faker::FunnyName.name
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div/div[1]/div/div/form/span/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set name
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div/div[1]/div/div/form/span/div[1]/div[2]/div[1]/div/div[2]/div/div/span/button").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div/div[1]/div/div/form/span/div[1]/div[2]/div[1]/div/div[2]/div/div/span/div/div/div/div[1]/div[2]/div[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div/div[1]/div/div/form/span/div[1]/div[2]/div[1]/div/div[2]/div/div/span/div/div/div/div[1]/div[1]/div/div/div[2]/div[35]/div/div/span").click
    click_button "Salvar"
end
  
Então('Valido que foi criado a tabela') do
    expect(page).to have_text "Lista de tabelas de preço"
end