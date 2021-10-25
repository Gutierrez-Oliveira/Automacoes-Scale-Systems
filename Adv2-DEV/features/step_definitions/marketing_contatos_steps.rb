Quando("seleciono para criar nova empresa e preencho os campos") do
  name = Faker::Name.name
  surname = Faker::FunnyName.name
  cnpj = Faker::CNPJ.numeric
  
  find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[4]/div/span[1]/span[2]").click
  find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[4]/ul/li/div/a").click
  click_button "Nova Empresa"
  find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set name
  find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[2]/div[1]/div/div[2]/div/div/div/div/input").set cnpj
  find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[2]/div[2]/div/div[2]/div/div/div/div/input").set surname
  find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[2]/div[3]/div/div[2]/div/div/div/div/input").set "Teste LTDA"
  click_button "Salvar"
end

Então('valido que a empresa foi cadastrada') do
  expect(page).to have_text "Teste LTDA"
end

Quando('seleciono para criar nova empresa e deixo alguns campos em branco') do
  find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[4]/div/span[1]/span[2]").click
  find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[4]/ul/li/div/a").click
  click_button "Nova Empresa"
  find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/span/div[1]/div[2]/div[3]/div/div[2]/div/div/div/div/input").set "Teste LTDA"
  click_button "Salvar"
end

Então('valido que será exibido um alerta de campo obrigatório') do
  expect(page).to have_text "O campo é obrigatório"
end