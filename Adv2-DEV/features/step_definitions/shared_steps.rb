Dado('que esteja logado {string} e {string}') do |email, password|
    visit "/"
    find(:xpath, "//*[@id='app']/div/div/div/div/div[1]/div/div/div[2]/div/div[2]/div/input").set email
    find(:xpath, "//*[@id='app']/div/div/div/div/div[1]/div/div/div[2]/div/div[3]/div/input").set password
    click_button "Entrar"
    find(:xpath, "//*[@id='app']/div/div[1]/div/div").click
end

Dado('que esteja logado com as seguintes credenciais {string} e {string}') do |email, password|
    visit "/"
    find(:xpath, "//*[@id='app']/div/div/div/div/div[1]/div/div/div[2]/div/div[2]/div/input").set email
    find(:xpath, "//*[@id='app']/div/div/div/div/div[1]/div/div/div[2]/div/div[3]/div/input").set password
    click_button "Entrar"
    find(:xpath, "//*[@id='app']/div/div[1]/div/div").click
  end