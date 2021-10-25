 Quando('seleciono a opção cadastro e crio o novo pacote') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[3]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[3]/ul/li/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/button").click
end

Quando('preencho com dados válidos') do
    cine = Faker::FunnyName.name
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/div/div[1]/div[1]/div/div[2]/div/div/div/div/input").set cine
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/div/div[2]/div[1]/div/div[2]/div/div/span/button/i").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/div/div[2]/div[1]/div/div[2]/div/div/span/div/div/div/div[1]/div[2]/div[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[1]/div/div[2]/div[1]/div/div[2]/div/div/span/div/div/div/div[1]/div[1]/div/div/div[2]/div[36]/div/div/span").click
    find(:xpath, "//*[@id='vs1__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs1__option-0']").click
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-2']").click
    find(:xpath, "//*[@id='vs3__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs3__option-0']").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[3]/div[2]/div/div/div/div[1]/div").click
    find(:xpath, "//*[@id='vs4__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs4__option-5']").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[4]/div/div/div/div/table/tr/td[3]/span/div/div/div/div/input").set "500000"
    find(:xpath, "//*[@id='vs5__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs5__option-16']").click
    find(:xpath, "//*[@id='vs6__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs6__option-8']").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/div[5]/div[1]/div[2]/button/i").click
    find(:xpath, "/html/body/div[1]/div[2]/div/div[1]/div[3]/div/div/div/div").click
    click_button "Incluir"
    click_button "Salvar"
end
  
Então('Valido se foi criado com sucesso') do
    expect(page).to have_text "Lista de pacotes"
end
