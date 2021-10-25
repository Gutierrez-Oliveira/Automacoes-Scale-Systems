Quando('seleciono Nos Cinemas') do
    find(:xpath, "//*[@id='__next']/main/div/div[4]/div/div/div/div/a[2]").click

end
  
Então('valido que foi exibido a lista de filmes') do
    expect(page).to have_xpath "//*[@id='cinemas']/div/div[5]/div[2]/div/div[1]/div[2]/div[1]/h2/a"
    expect(page).to have_text "Sala 3" "Sala 5" "Sala 6"
end
  
Quando('seleciono a última data dísponivel') do
    find(:xpath, "//*[@id='__next']/main/div/div[4]/div/div/div/div/a[2]").click
    find(:xpath, "//*[@id='cinemas']/div/div[2]/button[8]").click
end
  
Então('valido que será exibido o filme daquela data selecionada') do
    pending # Write code here that turns the phrase above into concrete actions
end