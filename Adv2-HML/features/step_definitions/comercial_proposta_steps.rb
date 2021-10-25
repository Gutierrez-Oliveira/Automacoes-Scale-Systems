Quando('seleciono nova proposta e preencho os campos') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[3]/div/a/span[2]").click
    click_button "Nova Proposta"

    find(:xpath, "/html/body/div[2]/div[2]/div/div[1]/div[2]/div/div/div/input[1]").set "Scale Systems"
    find(:xpath, "/html/body/div[2]/div[2]/div/div[1]/div[2]/div[1]/ul/li").click
    click_button "Confirmar"
    
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[1]/div/div[1]/header/div/button/span[2]").click
    find(:xpath, "/html/body/div[3]/div[2]/div/div/ul/li[1]/div").click
    click_button "Confirmar"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div[2]/header/div/button").click
    find(:xpath, "/html/body/div[2]/div[2]/div/div/ul/li[1]/div").click
    click_button "Confirmar"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div[3]/header/div/button/span[2]").click
    find(:xpath, "/html/body/div[1]/div[2]/div/div/ul/li[1]/div").click
    click_button "Confirmar"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div[1]/div/div/input").click
    find(:xpath, "/html/body/div[1]/ul[1]/li[1]/button/span").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div[2]/div/div/input").click
    find(:xpath, "/html/body/div[1]/ul[1]/li[1]/button").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[1]/div[2]/div/input").click
    find(:xpath, "/html/body/div[1]/ul[1]/li[1]/button").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[2]/span").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[2]/span/input").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[2]/span/div/div/div/div[1]/div[2]/div[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[2]/span/div/div/div/div[1]/div[1]/div/div/div[2]/div[36]/div/div/span").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[2]/div[2]/div[1]/label").click
    click_button "Salvar"

end

Então('válido que foi criado com sucesso') do
    expect(page).to have_text "Detalhes da Proposta"
end

Quando('seleciono nova proposta comercial') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[3]/div/a/span[2]").click
    click_button "Nova Proposta"
  end
  
Quando('preencho os campos do cliente novo e os campos da proposta') do
    find(:xpath, "/html/body/div[2]/div[2]/div/div[1]/div[3]/button").click
    surname = Faker::FunnyName.name
    name = Faker::Name.name
    email = Faker::Internet.free_email
    phone = Faker::PhoneNumber.cell_phone_in_e164
    find(:xpath, "/html/body/div[3]/div[2]/div/div[1]/div/div/div/input").set surname
    find(:xpath, "/html/body/div[3]/div[2]/div/div[3]/div/div/div/input").set name
    find(:xpath, "/html/body/div[3]/div[2]/div/div[4]/div/div/div/input").set phone
    find(:xpath, "/html/body/div[3]/div[2]/div/div[5]/div/div/div/input").set email
    click_button "Confirmar cadastro simples"
    click_button "Confirmar"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[1]/div/div[1]/header/div/button/span[2]").click
    find(:xpath, "/html/body/div[3]/div[2]/div/div/ul/li[1]/div").click
    click_button "Confirmar"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div[2]/header/div/button").click
    find(:xpath, "/html/body/div[2]/div[2]/div/div/ul/li[1]/div").click
    click_button "Confirmar"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[1]/div[1]/div[3]/header/div/button/span[2]").click
    find(:xpath, "/html/body/div[1]/div[2]/div/div/ul/li[1]/div").click
    click_button "Confirmar"

    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div[1]/div/div/input").click
    find(:xpath, "/html/body/div[1]/ul[1]/li[1]/button/span").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div[2]/div/div/input").click
    find(:xpath, "/html/body/div[1]/ul[1]/li[1]/button").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[1]/div[2]/div/input").click
    find(:xpath, "/html/body/div[1]/ul[1]/li[1]/button").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[2]/span").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[2]/span/input").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[2]/span/div/div/div/div[1]/div[2]/div[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[1]/div/div/div[2]/span/div/div/div/div[1]/div[1]/div/div/div[2]/div[36]/div/div/span").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div/div/div[2]/div/div/div[1]/div[2]/div[2]/div[2]/div[1]/label").click
    click_button "Salvar"
end

Então('válido que foi criado com sucesso a proposta com cliente novo') do
    expect(page).to have_text "Detalhes da Proposta"
end
  
Quando('seleciono a proposta e aceite ela') do
    surname = Faker::FunnyName.name
    cnpj = Faker::CNPJ.numeric
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[3]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/div[1]/table/tr[3]/td[9]/span/a/span").click
    click_button "Enviar para Análise de Crédito"

    find(:xpath, "//*[@id='company-full-data']/div[2]/div[1]/div[1]/div[2]/div/div/div/div/input").set cnpj
    sleep 3
    find(:xpath, "//*[@id='company-full-data']/div[2]/div[3]/div/div[2]/div/div/div/div/input").set surname
    find(:xpath, "//*[@id='tabs-demo']/div[1]/div/div[1]/div/div/form/div/div[2]/div[1]/div/div[3]/div[2]/div/div[1]/div/div/div[2]/div/p").click
    find(:xpath, "//*[@id='tabs-demo']/div[1]/div/div[1]/div/div/form/div/div[2]/div[1]/div/div[3]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div/input").set "06380160"
    click_button "Salvar alterações"

    find(:xpath, "//*[@id='tabs-demo']/div[1]/div/div[1]/div/div/form/div/div[1]/ul/li[5]/button/span").click
    find(:xpath, "//*[@id='tabs-demo']/div[1]/div/div[1]/div/div/form/div/div[2]/div/div/div/div/div/div[1]/button").click
    find(:xpath, "/html/body/div[1]/div[2]/footer/button[1]").click
    find(:xpath, "//*[@id='body-new-analysis']/div[1]/div/div[1]/div/div/small").click

    find(:xpath, "//*[@id='vs8__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs8__option-1']").click
    find(:xpath, "/html/body/div[4]/div[2]/div/form/div[3]/div[2]/div/div/input").set "1"
    find(:xpath, "//*[@id='vs9__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs9__option-3']").click
    find(:xpath, "//*[@id='vs10__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs10__option-5']").click
    find(:xpath, "//*[@id='vs11__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs11__option-3']").click
    find(:xpath, "/html/body/div[4]/div[2]/div/form/div[2]/div[4]/div/div/input").set "500000"
    find(:xpath, "/html/body/div[4]/div[2]/div/form/div[3]/div[4]/div/div/input").set "30"
    find(:xpath, "/html/body/div[4]/div[2]/div/form/div[8]/div/button[2]").click
    
    find(:xpath, "//*[@id='body-new-analysis']/div[1]/div/div[2]/div/div/small").click
    find(:xpath, "/html/body/div[3]/div[2]/div/form/div[1]/div[2]/div/label[1]").click
    find(:xpath, "/html/body/div[3]/div[2]/div/form/div[2]/div[2]/div/textarea").set "Aprovando análise de crédito feito por automação"
    click_button "Confirmar"

    find(:xpath, "//*[@id='body-new-analysis']/div[1]/div/div[3]/div/div/small").click
    find(:xpath, "/html/body/div[2]/div[2]/div/form/div[2]/div[1]/label[2]/span[1]/span[1]").click
    find(:xpath, "/html/body/div[2]/div[2]/div/form/div[2]/div[2]/div/div/textarea").set "Texto automatizado na tela de consulta no SERASA"
    click_button "Confirmar"

    find(:xpath, "//*[@id='body-new-analysis']/div[1]/div/div[4]/div/div/small").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div[1]/div[2]/div/label[1]").click
    find(:xpath, "//*[@id='vs27__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs27__option-0']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div[2]/div[2]/div/textarea").set "Texto automatizado da última tela de aprovação de crédito"
    click_button "Confirmar"
end
  
Então('valido que a proposta foi aceita com sucesso') do
    expect(page).to have_text "Detalhes Cliente"
end
  
Quando('seleciono a proposta e rejeito ela') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[3]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/div[1]/table/tr[3]/td[9]/span/a/span").click
    click_button "Enviar para Análise de Crédito"

    find(:xpath, "//*[@id='tabs-demo']/div[1]/div/div[1]/div/div/form/div/div[1]/ul/li[5]/button/span").click
    click_button "Nova análise"
    find(:xpath, "/html/body/div[1]/div[2]/footer/button[1]/span[2]").click
    find(:xpath, "//*[@id='body-new-analysis']/div[1]/div/div[1]/div/div/small").click

    find(:xpath, "//*[@id='vs8__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs8__option-1']").click
    find(:xpath, "/html/body/div[4]/div[2]/div/form/div[3]/div[2]/div/div/input").set "1"
    find(:xpath, "//*[@id='vs9__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs9__option-3']").click
    find(:xpath, "//*[@id='vs10__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs10__option-5']").click
    find(:xpath, "//*[@id='vs11__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs11__option-3']").click
    find(:xpath, "/html/body/div[4]/div[2]/div/form/div[2]/div[4]/div/div/input").set "500000"
    find(:xpath, "/html/body/div[4]/div[2]/div/form/div[3]/div[4]/div/div/input").set "30"
    find(:xpath, "/html/body/div[4]/div[2]/div/form/div[8]/div/button[2]").click
    
    find(:xpath, "//*[@id='body-new-analysis']/div[1]/div/div[2]/div/div/small").click
    find(:xpath, "/html/body/div[3]/div[2]/div/form/div[1]/div[2]/div/label[2]").click
    find(:xpath, "/html/body/div[3]/div[2]/div/form/div[2]/div[2]/div[1]/textarea").set "Reprovando aprovação de teste automatizado"
    click_button "Confirmar"
end
  
Então('valido que a proposta foi rejeitada') do
find(:xpath, "//*[@id='tabs-demo']/div[1]/div/div[1]/div/div/form/div/div[2]/div/div/div/div/div/div[3]/div/div/div[1]/div/div[3]/header/div").click
expect(page).to have_text "Reprovado"
end

Quando('seleciono uma proposta comercial') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[3]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[1]/div[1]/div/input").set "Teste 21/09"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/div[1]/table/tr[3]/td[9]/span/a/span").click
end
  
Quando('seleciono material e volto para a tela anterior repetidamente') do
    click_button "Ver material"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[1]/div[2]/ul/li[3]/a").click
    expect(page).to have_text "Estados (1)"
    expect(page).to have_text "Cidades (1)"
    expect(page).to have_text "Cinemas (1)"

    click_button "Ver material"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[1]/div[2]/ul/li[3]/a").click
    sleep 3
    expect(page).to have_text "Estados (1)"
    expect(page).to have_text "Cidades (1)"
    expect(page).to have_text "Cinemas (1)"

    click_button "Ver material"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[1]/div[2]/ul/li[3]/a").click
    sleep 3
    expect(page).to have_text "Estados (1)"
    expect(page).to have_text "Cidades (1)"
    expect(page).to have_text "Cinemas (1)"
end
  
Então('sempre valido que está sendo exibido as informações dos estados, cidades e cinemas') do
    expect(page).to have_text "Estados (1)"
    expect(page).to have_text "Cidades (1)"
    expect(page).to have_text "Cinemas (1)"
end