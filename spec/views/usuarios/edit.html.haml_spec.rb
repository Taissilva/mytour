require 'rails_helper'

RSpec.describe "usuarios/edit", :type => :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :login => "MyString",
      :senha => "MyString",
      :nome => "MyString",
      :email => nil
    ))
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do

      assert_select "input#usuario_login[name=?]", "usuario[login]"

      assert_select "input#usuario_senha[name=?]", "usuario[senha]"

      assert_select "input#usuario_nome[name=?]", "usuario[nome]"

      assert_select "input#usuario_email_id[name=?]", "usuario[email_id]"
    end
  end
end
