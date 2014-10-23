# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.describe "cidades/new", :type => :view do
  before(:each) do
    assign(:cidade, Cidade.new(
      :nome => "MyString",
      :país => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new cidade form" do
    render

    assert_select "form[action=?][method=?]", cidades_path, "post" do

      assert_select "input#cidade_nome[name=?]", "cidade[nome]"

      assert_select "input#cidade_país[name=?]", "cidade[país]"

      assert_select "input#cidade_estado[name=?]", "cidade[estado]"
    end
  end
end
