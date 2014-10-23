# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.describe "cidades/index", :type => :view do
  before(:each) do
    assign(:cidades, [
      Cidade.create!(
        :nome => "Nome",
        :país => "País",
        :estado => "Estado"
      ),
      Cidade.create!(
        :nome => "Nome",
        :país => "País",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of cidades" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "País".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
