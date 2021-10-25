Dado('que esteja logado como {string} e {string} e seleciono notícias') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
end
  
Quando('seleciona uma notícia') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que está sendo exibido a notícia') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciona Nova notícia') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('preenche os cmapos da notícia') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que a notícia foi criada') do
    pending # Write code here that turns the phrase above into concrete actions
end