Dado('que esteja logado {string} e {string}') do |email, senha|
    visit "https://homolog2.kinoplex.site/kinefilos/login/?source=/programa-fidelidade"
    find("#email").set email
    find("#pwd").set senha
    click_button"Logar"
end
  
Quando('acesso seleciono Pontos') do
    find(:xpath, "//*[@id='bs-example-navbar-collapse-1']/ul/li[2]/a").click
end
  
Então('valido o total de Pontos') do
    expect(page).to have_text "Total de Pontos Acumulados:" 
end
  
Quando('acesso Resgates') do
    find(:xpath, "//*[@id='bs-example-navbar-collapse-1']/ul/li[3]/a").click
end
  
Então('valido o histórico de Resgates') do
    expect(page).to have_text "Total de Resgates:"
end
  
Quando('acesso Prêmios') do
    find(:xpath, "//*[@id='bs-example-navbar-collapse-1']/ul/li[4]/a").click
end
  
Então('valido que exiba os prêmios para resgate e seus Pontos') do
    expect(page).to have_text "Prêmios"
    expect(page).to have_text "pontos"
end
  
Quando('acesso Promoções') do
    find(:xpath, "//*[@id='bs-example-navbar-collapse-1']/ul/li[5]/a").click
end
  
Então('valido a promoção SEMANA MÁGICA KINOPLEX') do
    find(:xpath, "/html/body/section/div/div[1]/div[2]/ul/li/a").click
    # expect(page).to have_text
end
  
Então('valido a promoção MEIA-ENTRADA ITAUCARD') do
    find(:xpath, "/html/body/section/div/div[2]/div[2]/ul/li/a").click
    expect(page).to have_text "MEIA-ENTRADA ITAUCARD"
end
  
Então('valido a promoção DESCONTO PARA CLIENTES NET OU CLARO') do
    find(:xpath, "/html/body/section/div/div[3]/div[2]/ul/li/a").click
    expect(page).to have_text "DESCONTO PARA CLIENTES NET OU CLARO"
end
  
Então('valido a promoção MEIA-ENTRADA PARA CLIENTES TELECINE') do
    find(:xpath, "/html/body/section/div/div[4]/div[2]/ul/li/a").click
    expect(page).to have_text "MEIA-ENTRADA PARA CLIENTES TELECINE"
end
  
Então('valido a promoção QUILÔMETROS DE VANTAGENS') do
    find(:xpath, "/html/body/section/div/div[5]/div[2]/ul/li/a").click
    expect(page).to have_text "QUILÔMETROS DE VANTAGENS"
end
  
Então('valido a promoção TROQUE SEUS DOTZ') do
    find(:xpath, "/html/body/section/div/div[6]/div[2]/ul/li/a").click
    expect(page).to have_text "TROQUE SEUS DOTZ"
end
  
Quando('acesso Regulamentos') do
    find(:xpath, "//*[@id='bs-example-navbar-collapse-1']/ul/li[6]/a").click
end
  
Então('valido que será exbido os regulamentos') do
    expect(page).to have_text "Regulamento subtitulo 1"
end