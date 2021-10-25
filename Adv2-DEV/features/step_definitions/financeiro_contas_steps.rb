Quando('seleciono contas bancarias e preencho os campos') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/ul/li[1]/div/a").click

    account=Faker::Number.number(digits: 6)
    agency=Faker::Number.number(digits: 4)
    click_button "Criar Nova"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[2]/div[1]/div/div[2]/div/div/div/div/input").set account
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[3]/div[1]/div/div[2]/div/div/div/div/input").set agency
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[4]/div[1]/div/div[2]/div/div/div/div/input").set "012345"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[5]/div[1]/div/div[2]/div/div/div/div/input").set "01234"
    find(:xpath, "//*[@id='vs1__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs1__option-3']").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[5]/div[2]/div/div[2]/div/div/div/div/input").set "3333"

    click_button "Salvar"
end
  
Então('valido que a conta foi criada com sucesso') do
    expect(page).to have_text "Lista de Contas Bancárias"
end
  
Quando('seleciono contas bancárias e preecnho os campos com dados inválidos') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/ul/li[1]/div/a").click

    click_button "Criar Nova"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[2]/div[1]/div/div[2]/div/div/div/div/input").set "123"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[3]/div[1]/div/div[2]/div/div/div/div/input").set "0"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[4]/div[1]/div/div[2]/div/div/div/div/input").set "4444"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[5]/div[1]/div/div[2]/div/div/div/div/input").set "01234"
    find(:xpath, "//*[@id='vs1__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs1__option-3']").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/div/span/div[1]/div[5]/div[2]/div/div[2]/div/div/div/div/input").set "3333"

    click_button "Salvar"
end
  
Então('valido que será exibido um alerta') do
    expect(page).to have_text "Criar Nova"
end