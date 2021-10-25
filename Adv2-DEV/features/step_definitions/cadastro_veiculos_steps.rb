Quando('seleciono veículos e preencho os dados') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[2]/ul/li[1]/div/a/span[2]").click
    click_button "Novo Veículo"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/span/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set "Teste Cinema"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div/div[1]/div/div/form/span/div[1]/div[1]/div[2]/div/div[2]/div/div/div/div/input").set "TSC"
    click_button "Salvar"


end
  
Então('valido que foi cadastrado no sistema') do 
    expect(page).to have_text "Novo Veículo"
end