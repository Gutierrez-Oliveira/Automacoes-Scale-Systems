Quando('seleciono data inicio e fim para consultar os novos clientes') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/ul/li[1]/div/a").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div[1]/div[1]/div[2]/div[2]/div/div/input").set "02042021"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div[1]/div[1]/div[2]/div[4]/div/div/input").set "21062021"
    click_button "Pesquisar"
end
  
Então('valido que foi exibido os clientes da data selecionada') do
    expect(page).to have_text "SCALE SYSTEMS LTDA"
end