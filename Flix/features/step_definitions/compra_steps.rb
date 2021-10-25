Dado('que eu acesso a página principal') do
  visit "/"
    click_button "Comece agora!"
end
  
Quando('preencho os campos') do
  find("input[placeholder='Escolha o estado']").click
  # find(:xpath, "//*[@id='vs1__combobox']/div[1]/input").click
  find(:xpath, "//*[@id='vs1__option-0']").click
  find("input[placeholder='Escolha a cidade']").click
  find(:xpath, "//*[@id='vs2__option-3']").click
  # find(:xpath, "//*[@id='vs3__combobox']/div[1]/input").click
  find("input[placeholder='Escolha o cinema']").click
  sleep 2
  find(:xpath, "//*[@id='vs3__option-1']").click
  click_button "Próximo"

  find("input[placeholder='Escolha o produto']").click
  find(:xpath, "//*[@id='vs4__option-0']").click
  find("input[placeholder='Escolha o tempo de mídia']").click
  find(:xpath, "//*[@id='vs5__option-0']").click
  click_button "Próximo"

  find("input[placeholder='Escolha o período de exibição']").click
  find(:xpath, "//*[@id='vs6__option-0']").click
  find("input[placeholder='Escolha uma data']").click
  find(:xpath, "/html/body/div[2]/div/div/div/div[2]/table[3]/tbody/tr[5]/td[5]").click
  find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div[2]/button[2]").click
  click_button "Definir Material"
end

Quando('carrego um vídeo') do
  find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div[1]/div/div[1]/div[3]/span").click
  find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div[2]/button[2]").click
  find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div[2]/button[2]").click

  mercedesglk = Dir.pwd + "/features/support/fixtures/movies/" [:MercedesGlk]

  find(:xpath, "//*[@id='dropzone']", visible:false).set mercedesglk

  sleep 10

end

Quando("preencho os campos do cadastro") do
  email = Faker::Internet.free_email
  find("#name").set "Gutierrez"
  find("#email").set email
  find("#password").set "asdasd"
  click_button "Próximo"

  find("#telefone").set "11959415770"
  find("#empresa").set "Teste de pacotes"
  find("#cnpj").set "04380584000129"
  click_button "Próximo"
  driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")


end

Quando('envio as fotos para criação do material') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('seleciono sem vídeo') do
  find(:xpath, "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div[1]/div/div[3]/div[3]/span").click
  click_button "Próximo"
  driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
  find(:xpath, "//*[@id='__BVID__270']").click
  find(:xpath, "//*[@id='disabled-wrapper']/button").click
end

Então('valido que o pedido foi efetuado com sucesso') do
  expect(page).to have_text "Pedido concluído com sucesso!"
  expect(page).to have_xpath "//*[@id='app']/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div[2]/button[2]"
end

