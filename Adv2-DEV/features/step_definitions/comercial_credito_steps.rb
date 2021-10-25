Quando('seleciono comercial e seleciono consultar crédito') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[4]/div/a/span[2]").click
end
  
  Quando('preencho o campo com o CPF válido') do
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div/form/div[2]/div/div/div/input").set "41083720007"
    click_button "Realizar Consulta"
end
  
Então('valido que foi consultado com sucesso') do
    expect(page).to have_text "Consulta realizada por"
end
  
Quando('preencho o campo com o CNPJ válido') do
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div/form/div[2]/div/div/div/input").set "04380584000129"
    click_button "Realizar Consulta"
end

