Quando('seleciono críticas') do
    click_button "Críticas"
end
  
Então('valido que está sendo exibido a lista de críticas') do
    expect(page).to have_text "Velozes e Furiosos 9 não tem vergonha de exagerar para garantir a diversão"
end
  
Quando('seleciono alguma crítica') do
    find(:xpath, "//*[@id='__next']/main/div/div[3]/div/div/div/div/button[3]").click
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[5]/div[3]").click
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[5]/div[5]/div/a").click
end
  
Então('valido que está sendo exibido os detalhes da crítica') do
    expect(page).to have_text "Novo 'Mortal Kombat' copia história de Vingadores para se destacar"
end