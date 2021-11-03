Quando('seleciono nova empresa e preencho os campos') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[4]/div/a").click
    click_button "Nova Empresa"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set "Empresa Teste"
    cnpj = Faker::CNPJ.pretty
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[2]/div[1]/div/div[2]/div/div/div/div/input").set cnpj
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[2]/div[2]/div/div[2]/div/div/div/div/input").set "Empresa Teste"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[2]/div[3]/div/div[2]/div/div/div/div/input").set "Empresa Teste Eirelli"
    click_button "Salvar"
end
  
Então('valido que a empresa foi cadastrada com sucesso') do
    expect(page).to have_text "Lista de Empresas"
end