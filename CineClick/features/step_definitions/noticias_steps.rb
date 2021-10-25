 Quando('seleciono notícias') do
    click_button "Notícias"
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[2]/a").click
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[2]/div[5]/a").click
end
  
Então('valido que está sendo exibido a lista de notícias') do
    expect(page).to have_text "A evolução dos filmes da DC Comics pelas cores"
end
  
Quando('seleciono alguma notícia') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que está sendo exibido os detalhes') do
    pending # Write code here that turns the phrase above into concrete actions
end