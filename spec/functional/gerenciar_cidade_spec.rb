# -*- encoding : utf-8 -*-

require 'rails_helper'

feature 'gerenciar Cidade' do

  scenario 'incluir Cidade' do # , :js => true  do

    visit new_cidade_path

    preencher_e_verificar_cidade



  end

  scenario 'alterar Cidade' do #, :js => true  do

   cidade = FactoryGirl.create(:cidade)

    visit edit_cidade_path(cidade)

    preencher_e_verificar_cidade



  end

   scenario 'excluir Cidade' do #, :javascript => true  do

       cidade = FactoryGirl.create(:cidade)

        visit cidades_path

        click_link 'Excluir'



  end

   def preencher_e_verificar_cidade

      fill_in 'Nome',  :with => "nome"
	  fill_in 'País',  :with => "país"
	  fill_in 'Estado',  :with => "estado"

     
	  click_button 'Salvar'

      expect(page).to have_content 'Nome: nome'
      expect(page).to have_content 'País: país'
      expect(page).to have_content 'Estado: estado'


   end
end
