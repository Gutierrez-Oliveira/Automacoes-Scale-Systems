Quando('seleciono mailing e efetuo a busca') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/div/span[1]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[7]/ul/li[3]/div/a").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[1]/div/div[1]/div[1]/div/input").set "Madria"


end
  
Então('valido que os mailing sejam exibidos') do
    expect(page).to have_text "MADRIA"
end