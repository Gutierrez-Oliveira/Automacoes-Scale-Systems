Dado('que esteja logado como {string} e {string} e seleciono home') do |string, string2|
    visit "/login"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[1]/input").set "master@cineclick.com"
    find(:xpath, "//*[@id='root']/div/div/div/div/div/main/div/div/div/div/div[2]/div/div[2]/form/div[2]/input").set "$c4l3S1573m"
    click_button "Entrar"
    find(:xpath, "//*[@id='root']/div/div[2]/div[2]/ul/li[3]/a/div").click
end
  
Quando('seleciona uma publicação em destaque') do
    find(:xpath, "//*[@id='root']/div/div[3]/div[2]/div[3]/div/div/div/div[3]/div[2]/div/div[6]/div/div[1]/div/div[2]/a").click
    visit "https://cineclick-admin.scale.com.br/news/edit/filme-do-vilao-de-homem-aranha-morbius-e-adiado"
end
  
Então('valido que está sendo exibido a publicação') do
    expect(page).to have_text "Filme do vilão de Homem-Aranha, Morbius, é adiado"
end

Quando('seleciono uma publicação do top 15') do
      pending # Write code here that turns the phrase above into concrete actions
end
    
Então('valido que está sendo exibido') do
      pending # Write code here that turns the phrase above into concrete actions
end