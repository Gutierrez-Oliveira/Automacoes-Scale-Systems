Quando('seleciono filmes') do
    click_button "Filmes"
end
  
Então('valido que está sendo exibido a lista de filmes') do
    expect(page).to have_xpath "//*[@id='__next']/main/div/div[5]/div[14]/div[2]/div/div[1]/div/div/div"
end
  
Quando('clico sobre o filme') do
    click_button "Filmes"
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[22]/a").click
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[22]/div[5]/a").click
end
  
Então('valido que foi exibido as informações') do
    expect(page).to have_text "SPACE JAM: UM NOVO LEGADO"
end