# -*- encoding : utf-8 -*-
require 'rails_helper' 

feature 'gerenciar Lugar' do 
     before :each do 
         create(:cidade, nome: 'Campos', país: 'País', estado: 'Estado') 
     end 

  let(:cidade) {create(:cidade, nome: 'Camposs', país: 'País', estado: 'Estado')}

  scenario 'incluir Lugar' do # , :js => true  do 
   
    visit new_lugar_path 

    preencher_e_verificar_lugar

  end 

  scenario 'alterar Lugar' do #, :js => true  do 

   lugar = FactoryGirl.create(:lugar, :cidade => cidade ) 

    visit edit_lugar_path(lugar) 

    preencher_e_verificar_lugar 

  end 

   scenario 'excluir Lugar' do #, :javascript => true  do 

       lugar = FactoryGirl.create(:lugar, :cidade => cidade) 

       visit lugares_path 

        click_link 'Excluir' 

 
  end 

   def preencher_e_verificar_lugar 

      fill_in 'Nome',  :with => "nome" 
      fill_in 'Tipo',  :with => "tipo" 
      select 'Campos', from: 'Cidade'

      click_button 'Salvar' 

      expect(page).to have_content 'Nome: nome' 
      expect(page).to have_content 'Tipo: tipo' 
      expect(page).to have_content 'Cidade: Campos'

   end 

end 
