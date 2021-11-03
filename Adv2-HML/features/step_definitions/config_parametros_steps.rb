Quando('seleciono o botão novo parâmetro') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[10]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[10]/ul/li[3]/div/a").click
    click_button "Novo Parâmetro"

    find(:xpath, "/html/body/div[2]/div[2]/div/div[1]/div[2]/div/div/input").set "0123456"
    find(:xpath, "/html/body/div[2]/div[2]/div/div[3]/div[2]/div/div/input").set "Teste 1"
    click_button "Salvar"
end
  
Então('valido que foi criado um novo parâmetro') do
    expect(page).to have_text "Lista de parâmetros"
end