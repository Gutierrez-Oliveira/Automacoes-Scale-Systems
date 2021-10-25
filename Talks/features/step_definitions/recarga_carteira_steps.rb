Quando('seleciona recarregar carteira e digito os valores') do
    find(:xpath, "//*[@id='root']/div/div/div[2]/div[1]/nav/div/div/ul[2]/li/a/div").click
    find(:xpath, "//*[@id='root']/div/div/div[2]/div[1]/nav/div/div/ul[2]/li/div/button[2]").click
    find(:xpath, "/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/input").set "500"
    click_button "Gerar Boleto"
end
  
Então('Valido que foi criado o boleto com sucesso') do
    expect(page).to have_text "Boleto"
    expect(page).to have_text "Utilize o código de barras abaixo para realizar o pagamento"
end
  
Quando('gero o boleto e copio o código de barras') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('altero o valor da tarifa do boleto e gero ele com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('Valido que o boleto foi gerado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono recarregar carteira') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido o valor da carteira está correto') do
    pending # Write code here that turns the phrase above into concrete actions
end