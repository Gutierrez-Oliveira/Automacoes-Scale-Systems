Quando('filtro as ofertas para game') do
    #find("#exibir").click
    find(:xpath, "//*[@id='exibir']/option[9]").select_option
    sleep 5
end
  
Então('valido que será exibido apenas as ofertas de game') do
    
end