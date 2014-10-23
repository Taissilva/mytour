# -*- encoding : utf-8 -*-

require 'rails_helper'

feature 'gerenciar Email' do

  scenario 'incluir Email' do # , :js => true  do

    visit new_email_path

    preencher_e_verificar_email



  end

  scenario 'alterar Email' do #, :js => true  do

   email = FactoryGirl.create(:email)

    visit edit_email_path(email)

    preencher_e_verificar_email



  end

   scenario 'excluir Email' do #, :javascript => true  do

       email = FactoryGirl.create(:email)

        visit emails_path

        click_link 'Excluir'



  end

   def preencher_e_verificar_email

      fill_in 'Emails',  :with => "emails"

      click_button 'Salvar'

      expect(page).to have_content 'Emails: emails'



   end
end
