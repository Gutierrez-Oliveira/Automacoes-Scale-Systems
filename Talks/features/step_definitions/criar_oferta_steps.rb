Quando('preencho os campos necessários') do
    click_button "Criar oferta"
    find(:xpath, "/html/body/div[2]/div/div[1]/div/div/div[2]/div/div/table/tbody/tr[1]/td[6]/button").click
end
  
Então('valido que foi criado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('preencho os campos com dados inválidos') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('válido que não foi criado a oferta') do
    pending # Write code here that turns the phrase above into concrete actions
end