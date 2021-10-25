Quando("seleciono para criar nova empresa e preencho os campos") do
  find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[4]/div/span[1]/span[2]").click
  find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[4]/ul/li/div/a").click
  click_button "Nova Empresa"

end

Então('valido que a empresa foi cadastrada') do
  expect(page).to have_text "Lista de Contatos"
end