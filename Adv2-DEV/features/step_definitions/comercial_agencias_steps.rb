Quando("seleciono agências") do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[2]/div/a/span[2]").click
end

Quando("seleciono agências Comercial") do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[3]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[3]/ul/li[2]/div/a/span[2]").click
end

Quando('seleciono nova agência e preencho os campos') do
    click_button "Nova Agência"

    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set "Teste Agência"
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[1]/div/div[2]/div/div/div/div/input").set "Gutierrez"
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[2]/div/div[2]/div/div/div/div/input").set "11 999999999"
    email = Faker::Internet.free_email
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[3]/div/div[2]/div/div/div/div/input").set email
    click_button "Salvar"
end
  
Então('valido que a agência foi criada') do
    expect(page).to have_text "Lista de agências"
end