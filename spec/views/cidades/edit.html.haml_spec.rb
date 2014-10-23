# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.describe "cidades/edit", :type => :view do
  before(:each) do
    @cidade = assign(:cidade, Cidade.create!(
      :nome => "MyString",
      :país => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit cidade form" do
    render

    assert_select "form[action=?][method=?]", cidade_path(@cidade), "post" do

      assert_select "input#cidade_nome[name=?]", "cidade[nome]"

      assert_select "input#cidade_país[name=?]", "cidade[país]"

      assert_select "input#cidade_estado[name=?]", "cidade[estado]"
    end
  end
end
