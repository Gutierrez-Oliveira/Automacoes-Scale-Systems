Dado('que esteja logado com as credenciais {string} e {string}') do |email, password|
    visit "/"
    click_button "Acesse"
    find("#Email").set email
    find("#Password").set password
    find(:xpath, "/html/body/div[2]/div/div[1]/div[2]/div/div[2]/form/button").click

end
  
Quando('acesso a página de ofertas') do
    find(:xpath, "//*[@id='root']/div/div/div[1]/div/div/ul/li[3]/a").click
end