Quando('seleciono comissões para criar novo executivo') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[9]/div/a/span[2]").click
end
  
Quando('seleciono novo executivo e preencho os campos') do
    name = Faker::FunnyName.name
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/button").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set name
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[2]/div[1]/div/div[2]/div/div/div/div/input").set "2"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[2]/button[2]").click
end
  
Então('valido que foi criado o executivo') do
    expect(page).to have_text "Lista de Comissões"
end

Quando('seleciono comissões para criar novo gerente comercial') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[9]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[1]/label[2]/span[1]/span[1]").click
end

Então('valido que foi criado o gerente comercial') do
    expect(page).to have_text "Lista de Comissões"
end
  
Quando('pesquiso um gerente comercial') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[9]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[1]/label[2]/span[1]/span[1]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[2]/div[1]/div/div/div/div/div[1]/table/tr[3]/td[3]/span/a/span").click

end
  
Então('valido que será exibido suas informações') do
    expect(page).to have_text "Detalhes da Comissão"
end
  
Quando('pesquiso um executivo') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[9]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[2]/div[1]/div/div/div/div/div[1]/table/tr[3]/td[3]/span/a/span").click
end