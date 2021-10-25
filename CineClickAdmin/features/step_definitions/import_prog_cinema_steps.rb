Dado('que esteja logado como {string} e {string} e seleciono importação da programação de tv') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
end
  
Quando('seleciono importar') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que foi feita a importação') do
    pending # Write code here that turns the phrase above into concrete actions
end