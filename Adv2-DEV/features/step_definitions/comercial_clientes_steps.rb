Quando('seleciono clientes') do
    pending # Write code here that turns the phrase above into concrete actions
end
   

Quando('seleciono novo cliente') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[1]/div/a").click
    click_button "Novo Cliente"
    name = Faker::Name.name
    email = Faker::Internet.free_email
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[1]/div[1]/div/div[2]/div/div/div/div/input").set name
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[1]/div/div[2]/div/div/div/div/input").set name
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[2]/div/div[2]/div/div/div/div/input").set "11999999999"
    find(:xpath, "//*[@id='tabs-demo']/div/div/div[1]/div/div/form/div[1]/div[2]/div[3]/div/div[2]/div/div/div/div/input").set email
    click_button "Salvar"
end
  
Então('valido que foi criado um novo cliente') do
    expect(page).to have_text "Lista de clientes"
end

Quando('seleciono clientes no perfil gerente comercial') do
    pending # Write code here that turns the phrase above into concrete actions
end 
  
Quando('seleciono um cliente') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[1]/div/a/span[2]").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[1]/header/div[2]/input").set "Scale Systems"
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[1]/div/div[1]/table/tr[3]/td[8]/span/div/a/span").click
end
  
Então('valido que seja exibido os detalhes do cliente') do
    expect(page).to have_text "Detalhes Cliente"
end

Quando('Seleciono um cliente') do
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/div/span[1]/span[2]").click
    find(:xpath, "//*[@id='app']/div/div[1]/div/div/div/section/div[5]/ul/li[1]/div/a").click
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[1]/header/div[2]/input").set "BMW Sorocaba"
    sleep 1
    find(:xpath, "//*[@id='content-area']/div[2]/div[2]/div/div[2]/div/div[2]/div[1]/div/div[1]/div/div[1]/table/tr[3]/td[8]/span/div/a/span").click
    find(:xpath, "//*[@id='tabs-demo']/div[1]/div/div[1]/div/div/form/div/div[1]/ul/li[2]/button").click
    sleep 1
end
  
Quando('cadastro as categorias selecionada') do
    name = Faker::Name.name
    # find(:xpath, "//*[@id='tabs-demo']/div[1]/div/div[1]/div/div/form/div/div[2]/div/div/div[6]/div[3]/div/div/div/div[1]/table/thead/tr/th[4]/div/a").click
    # click_button "Confirmar"
    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 1"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-0']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click
    sleep 1
    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 2"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-1']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 3"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-2']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 4"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-3']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 5"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-4']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 6"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-5']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 7"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-6']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 8"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-7']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 9"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-8']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 10"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-9']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 11"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-10']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 12"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-11']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 13"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-12']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 14"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-13']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 15"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-14']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 16"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-15']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 17"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-16']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 18"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-17']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 19"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-18']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    click_button "Incluir produto do cliente"
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set name+" 20"
    find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    find(:xpath, "//*[@id='vs2__option-19']").click
    find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 21"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-20']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 22"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-21']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 23"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-22']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 24"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-23']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 25"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-24']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 26"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-25']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 27"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-26']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 28"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-27']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 29"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-28']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 30"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-29']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 31"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-30']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 32"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-31']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 33"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-32']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 34"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-33']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 35"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-34']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 36"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-35']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 37"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-36']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 38"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-37']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 39"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-38']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 40"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-39']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click
    # sleep 1
    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 41"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-40']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 42"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-41']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 43"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-42']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 44"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-43']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 45"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-44']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 46"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-45']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 47"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-46']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 48"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-47']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 49"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-48']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 50"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-49']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 51"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-50']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 52"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-51']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 53"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-52']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 54"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-53']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 55"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-54']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 56"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-55']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 57"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-56']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 58"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-57']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 59"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-58']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 60"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-59']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 61"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-60']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 62"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-61']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 63"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-62']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 64"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-63']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 65"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-64']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 66"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-65']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 67"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-66']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 68"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-67']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 69"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-68']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 70"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-69']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 71"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-70']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 72"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-71']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 73"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-72']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 74"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-73']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 75"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-74']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 76"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-75']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 77"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-76']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 78"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-77']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 79"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-78']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 80"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-79']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 81"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-80']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 82"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-81']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 83"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-82']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 84"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-83']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 85"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-84']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 86"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-85']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 87"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-86']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 88"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-87']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 89"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-88']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 90"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-89']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 91"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-90']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 92"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-91']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 93"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-92']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 94"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-93']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 95"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-94']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 96"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-95']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 97"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-96']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 98"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-97']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 99"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-98']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 100"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-99']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 101"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-100']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 102"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-101']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 103"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-102']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 104"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-103']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 105"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-104']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 106"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-105']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 107"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-106']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 108"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-107']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 109"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-108']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 110"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-109']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 111"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-110']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 112"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-111']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 113"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-112']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 114"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-113']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 115"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-114']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 116"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-115']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 117"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-116']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click
    # sleep 1
    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 118"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-117']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 119"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-118']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 120"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-119']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 121"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-120']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 122"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-121']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 123"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-122']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 124"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-123']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 125"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-124']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 126"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-125']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 127"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-126']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 128"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-127']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 129"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-128']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 130"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-129']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 131"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-130']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 132"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-131']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 133"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-132']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 134"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-133']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 135"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-134']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 136"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-135']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 137"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-136']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 138"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-137']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 139"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-138']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 139"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-139']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 140"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-140']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 141"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-141']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 142"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-142']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 143"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-143']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 144"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-144']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # # click_button "Incluir produto do cliente"
    # # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste"
    # # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # # find(:xpath, "//*[@id='vs2__option-145']").click
    # # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 145"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-146']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 146"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-147']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 147"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-148']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 148"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-149']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 149"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-150']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 150"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-151']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 151"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-152']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 152"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-153']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 153"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-154']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 154"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-155']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 155"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-156']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 156"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-157']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 157"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-158']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click

    # click_button "Incluir produto do cliente"
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[2]/div/div/input").set "Produto de Teste 158"
    # find(:xpath, "//*[@id='vs2__combobox']/div[1]/input").click
    # find(:xpath, "//*[@id='vs2__option-159']").click
    # find(:xpath, "/html/body/div[1]/div[2]/div/form/div/div[8]/button[2]").click
end
  
Então('valido que foi cadastrado as categorias com sucesso') do
    expect(page).to have_text "Produtos do Cliente"
end