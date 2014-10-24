require 'rails_helper'

RSpec.describe "lugares/new", :type => :view do
  before(:each) do
    assign(:lugar, Lugar.new(
      :nome => "MyString",
      :tipo => "MyString",
      :cidade => nil
    ))
  end

  it "renders new lugar form" do
    render

    assert_select "form[action=?][method=?]", lugares_path, "post" do

      assert_select "input#lugar_nome[name=?]", "lugar[nome]"

      assert_select "input#lugar_tipo[name=?]", "lugar[tipo]"

      assert_select "input#lugar_cidade_id[name=?]", "lugar[cidade_id]"
    end
  end
end
