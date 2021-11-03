Quando('seleciono uma agência\/cliente') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[8]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[8]/ul/li[2]/div/a").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[1]/div/div[1]/div[1]/div/input").set "ZEBRA"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[1]/div/div[2]/div/div/div[1]/table/tr[3]/td[4]/span/a").click

end
  
Então('valido que será exibido os detalhes da carteira') do
    expect(page).to have_text "ZEBRA DELUXE PUBLICIDADE E PROPAGANDA LTDA"
end