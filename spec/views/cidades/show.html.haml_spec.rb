# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.describe "cidades/show", :type => :view do
  before(:each) do
    @cidade = assign(:cidade, Cidade.create!(
      :nome => "Nome",
      :país => "País",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/País/)
    expect(rendered).to match(/Estado/)
  end
end
