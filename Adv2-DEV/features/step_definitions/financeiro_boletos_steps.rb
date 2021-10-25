Quando('acesso a página e preencho os campos') do
    name=Faker::Name.first_name
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/ul/li[2]/div/a").click
    
    click_button "Criar Nova"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/div[1]/textarea").set name
    
    click_button "Salvar"
end
  
Então('valido que foi criado com sucesso') do
    expect(page).to have_text "Lista de Instruções de Boleto"
end