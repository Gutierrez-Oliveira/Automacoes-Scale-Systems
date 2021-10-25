Dado('que esteja na tela de cadastro') do
    visit "/kinefilos/cadastro/?source=/programa-fidelidade"
end
  
Quando('preencho os dados') do
    cpf = Faker::IDNumber.brazilian_citizen_number
    find("#cpf").set cpf
    nome = Faker::Name.name
    find("#nome").set nome
    email = Faker::Internet.free_email
    find("#email").set email
    find(:xpath, "//*[@id='sexo']/option[3]").click
    find("#dataNascimento").set "00/00/0000"
    find(:xpath, "//*[@id='estado']/option[26]").click
    find(:xpath, "//*[@id='cidadeEndereco']/option[16]").click
    find(:xpath, "//*[@id='cinemadogrupo']/option[21]").click
    find("#tagator_activate_tagator2").click
    find(:xpath, "//*[@id='tagator_activate_tagator2']/ul/li[3]").click
    find(:xpath, "//*[@id='pergunta_6']/option[5]").click
    find("#submitKinefilo").click
    find("#senhaUsuario").set "asdasd" 
    find("#senhaUsuario2").set "asdasd"
    find("#submitKinefilo").click
    
end

Quando('preencho os dados com nome em branco') do
    cpf = Faker::IDNumber.brazilian_citizen_number
    find("#cpf").set cpf
    find("#nome").set "   ."
    email = Faker::Internet.free_email
    find("#email").set email
    find(:xpath, "//*[@id='sexo']/option[3]").click
    find("#dataNascimento").set "00/00/0000"
    find(:xpath, "//*[@id='estado']/option[26]").click
    find(:xpath, "//*[@id='cidadeEndereco']/option[16]").click
    find(:xpath, "//*[@id='cinemadogrupo']/option[21]").click
    find("#tagator_activate_tagator2").click
    find(:xpath, "//*[@id='tagator_activate_tagator2']/ul/li[3]").click
    find(:xpath, "//*[@id='pergunta_6']/option[5]").click
    find("#submitKinefilo").click
    find("#senhaUsuario").set "asdasd" 
    find("#senhaUsuario2").set "asdasd"
    find("#submitKinefilo").click
end

  Quando('preencho os dados com CPF inválido') do
    cpf = Faker::IDNumber.brazilian_citizen_number
    find("#cpf").set cpf
    nome = Faker::Name.name
    find("#nome").set nome
    email = Faker::Internet.free_email
    find("#email").set email
    find(:xpath, "//*[@id='sexo']/option[3]").click
    find("#dataNascimento").set "00/00/0000"
    find(:xpath, "//*[@id='estado']/option[26]").click
    find(:xpath, "//*[@id='cidadeEndereco']/option[16]").click
    find(:xpath, "//*[@id='cinemadogrupo']/option[21]").click
    find("#tagator_activate_tagator2").click
    find(:xpath, "//*[@id='tagator_activate_tagator2']/ul/li[3]").click
    find(:xpath, "//*[@id='pergunta_6']/option[5]").click
    find("#submitKinefilo").click
    find("#senhaUsuario").set "asdasd" 
    find("#senhaUsuario2").set "asdasd"
    find("#submitKinefilo").click
end
  
Quando('preencho os dados com data de nascimento inválido') do
    cpf = Faker::IDNumber.brazilian_citizen_number
    find("#cpf").set cpf
    nome = Faker::Name.name
    find("#nome").set nome
    email = Faker::Internet.free_email
    find("#email").set email
    find(:xpath, "//*[@id='sexo']/option[3]").click
    find("#dataNascimento").set "00/00/0000"
    find(:xpath, "//*[@id='estado']/option[26]").click
    find(:xpath, "//*[@id='cidadeEndereco']/option[16]").click
    find(:xpath, "//*[@id='cinemadogrupo']/option[21]").click
    find("#tagator_activate_tagator2").click
    find(:xpath, "//*[@id='tagator_activate_tagator2']/ul/li[3]").click
    find(:xpath, "//*[@id='pergunta_6']/option[5]").click
    find("#submitKinefilo").click
    find("#senhaUsuario").set "asdasd" 
    find("#senhaUsuario2").set "asdasd"
    find("#submitKinefilo").click
end