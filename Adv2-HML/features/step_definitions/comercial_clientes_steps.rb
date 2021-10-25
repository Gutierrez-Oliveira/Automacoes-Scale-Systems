Quando('seleciono novo cliente') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[1]/div/a").click
    click_button "Novo Cliente"
    name = Faker::Name.name
    email = Faker::Internet.free_email
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set name
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[1]/div/div[2]/div/div/div/div/input").set name
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[2]/div/div[2]/div/div/div/div/input").set "11999999999"
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[3]/div/div[2]/div/div/div/div/input").set email
    click_button "Salvar"
end
  
Então('valido que foi criado um novo cliente') do
    expect(page).to have_text "Lista de clientes"
end
  
Quando('seleciono um cliente') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[1]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[1]/header/div[2]/input").set "Scale Systems"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[1]/div/div[1]/table/tr[3]/td[8]/span/div/a/span").click
end
  
Então('valido que seja exibido os detalhes do cliente') do
    expect(page).to have_text "Detalhes Cliente"
end