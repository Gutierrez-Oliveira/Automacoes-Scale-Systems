Quando('seleciono novo perfil') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[8]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[10]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[10]/ul/li[2]/div/a/span[2]").click
    click_button "Novo Perfil"

    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div/div[2]/div/div/input").set "Teste novo perfil"
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[2]/div[2]/div/div[1]/div[2]/div/label[1]").click
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[2]/div[5]/div/div[2]/div[2]/div/label[2]").click
    click_button "Salvar"
end
  
Então('valido que foi criado novo perfil') do
    expect(page).to have_text "Lista de perfis"
end
  
Quando('seleciono um perfil') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[8]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[10]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[10]/ul/li[2]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/table/tr[1]/td[2]/span/a/span").click
end
  
Então('valido que foi exibido os detalhes do perfil') do
    expect(page).to have_text "Marketing"
    expect(page).to have_text "Dados do Perfil"
end