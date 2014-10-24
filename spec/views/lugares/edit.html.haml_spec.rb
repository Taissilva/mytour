require 'rails_helper'

RSpec.describe "lugares/edit", :type => :view do
  before(:each) do
    @lugar = assign(:lugar, Lugar.create!(
      :nome => "MyString",
      :tipo => "MyString",
      :cidade => nil
    ))
  end

  it "renders the edit lugar form" do
    render

    assert_select "form[action=?][method=?]", lugar_path(@lugar), "post" do

      assert_select "input#lugar_nome[name=?]", "lugar[nome]"

      assert_select "input#lugar_tipo[name=?]", "lugar[tipo]"

      assert_select "input#lugar_cidade_id[name=?]", "lugar[cidade_id]"
    end
  end
end
