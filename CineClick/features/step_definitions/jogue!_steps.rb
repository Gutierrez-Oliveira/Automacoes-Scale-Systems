Quando('seleciono Jogue!') do
    click_button "Jogue!"
end
  
Quando('escolho o jogo fato ou fake') do
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[1]/a").click
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[1]/div[5]/a").click
end
  
Então('valido que o jogo está funcionando perfeitamente') do
    pending # Write code here that turns the phrase above into concrete actions
end