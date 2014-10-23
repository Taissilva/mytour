# coding: utf-8

require 'rails_helper'

feature 'gerenciar Usuario' do

  before :each do
    create(:email, emails: 'Emails')
  end

  let(:email) {create(:email, emails: 'emailss')}

  scenario 'incluir Usuario' do # , :js => true  do

    visit new_usuario_path

    preencher_e_verificar_usuario
  end

  scenario 'alterar Usuario' do #, :js => true  do

    usuario = FactoryGirl.create(:usuario,:email => email)

    visit edit_usuario_path(usuario)

    preencher_e_verificar_usuario
  end

   scenario 'excluir usuario' do #, :javascript => true  do

       usuario = FactoryGirl.create(:usuario, :email => email)

        visit usuarios_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_usuario

      fill_in 'Login',  :with => "login"
      fill_in 'Senha',  :with => "senha"
      fill_in 'Nome',  :with => "nome"
      select 'Emails', from: 'Email'

      click_button 'Salvar'

      expect(page).to have_content 'Login: login'
      expect(page).to have_content 'Senha: senha'
	  expect(page).to have_content 'Nome: nome'
	  expect(page).to have_content 'Email: Emails'
 end
end
