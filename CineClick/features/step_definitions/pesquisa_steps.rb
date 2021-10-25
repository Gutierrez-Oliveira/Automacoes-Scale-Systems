Quando('digito o nome do filme e seleciono ele') do
    find(:xpath, "//*[@id='__next']/main/div/div[1]/div[2]/div/input").set "Titanic"
    find(:xpath, "//*[@id='__next']/main/div/div[1]/div[2]/div/button[2]/img").click
    sleep 3
    find(:xpath, "//*[@id='__next']/main/div/div[6]/div[5]/div[5]/a").click
    end
  
Então('quero validar que foi exbido os resultados do filme pesquisado') do
    expect(page).to have_text "Titanic: Marca de mão em janela está visível 20 anos depois"
end