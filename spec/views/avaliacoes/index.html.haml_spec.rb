require 'rails_helper'

RSpec.describe "avaliacoes/index", :type => :view do
  before(:each) do
    assign(:avaliacoes, [
      Avaliacao.create!(
        :positiva => "Positiva",
        :negativa => "Negativa",
        :usuario => nil,
        :cidade => nil,
        :lugar => nil
      ),
      Avaliacao.create!(
        :positiva => "Positiva",
        :negativa => "Negativa",
        :usuario => nil,
        :cidade => nil,
        :lugar => nil
      )
    ])
  end

  it "renders a list of avaliacoes" do
    render
    assert_select "tr>td", :text => "Positiva".to_s, :count => 2
    assert_select "tr>td", :text => "Negativa".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
