require 'rails_helper'

RSpec.describe "avaliacoes/show", :type => :view do
  before(:each) do
    @avaliacao = assign(:avaliacao, Avaliacao.create!(
      :positiva => "Positiva",
      :negativa => "Negativa",
      :usuario => nil,
      :cidade => nil,
      :lugar => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Positiva/)
    expect(rendered).to match(/Negativa/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
