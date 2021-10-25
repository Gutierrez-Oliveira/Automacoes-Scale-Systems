Dado('que esteja na tela de login') do
    visit "/kinefilos/login/?source=/programa-fidelidade"
end
  
Quando('submeto minhas credenciais {string} e {string}') do |email, senha|
    find("#email").set email
    find("#pwd").set senha
    click_button"Logar"
end
  
Então('valido que foi feito o login com sucesso') do
    # expect(page).to have_text "Olá"
end
  
Quando('submeto minhas credencias inválidas {string} e {string}') do |email2, senha2|
    find("#email").set email2
    find("#pwd").set senha2
    click_button "Logar"
  end
  
Então('deve ser exibido um alerta de usuário\/senha incorreto') do
    expect(page).to have_text "Erro! Erro de autenticação"
  end