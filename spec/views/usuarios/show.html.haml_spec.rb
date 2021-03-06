# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.describe "usuarios/show", :type => :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :login => "Login",
      :senha => "Senha",
      :nome => "Nome",
      :email => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Login/)
    expect(rendered).to match(/Senha/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(//)
  end
end
