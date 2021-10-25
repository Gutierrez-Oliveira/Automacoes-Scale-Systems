Quando('seleciono Na TV') do
    find(:xpath, "//*[@id='__next']/main/div/div[4]/div/div/div/div/a[1]").click
end
  
Então('valido que está sendo exibido a programação') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('filtro a programação por gênero') do
    find(:xpath, "//*[@id='na-tv']/div[2]/div[3]/div[1]/div[1]/div/div/div[1]").click
    find(:xpath, "//*[@id='na-tv']/div[2]/div[3]/div[1]/div[1]/div/div/div[2]/div").click
end
  
Então('valido que está exibindo a programação apenas do gênero selecionado') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('seleciono um programação') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido que está sendo exibido os detalhes da programação') do
    pending # Write code here that turns the phrase above into concrete actions
end