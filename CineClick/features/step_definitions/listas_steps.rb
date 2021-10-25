Quando('seleciono listas') do
    click_button "Listas"
end
  
Então('valido que está sendo exibido as listas') do
    expect(page).to have_xpath "//*[@id='__next']/main/div/div[5]/div[5]/div[3]/div/div/div"
end
  
Quando('seleciono alguma lista') do
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[5]/a").click
    find(:xpath, "//*[@id='__next']/main/div/div[5]/div[5]/div[5]/a").click
end
  
Então('valido que está sendo exibido os detalhes da lista') do
    pending # Write code here that turns the phrase above into concrete actions
end