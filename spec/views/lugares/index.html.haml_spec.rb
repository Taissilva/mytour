require 'rails_helper'

RSpec.describe "lugares/index", :type => :view do
  before(:each) do
    assign(:lugares, [
      Lugar.create!(
        :nome => "Nome",
        :tipo => "Tipo",
        :cidade => nil
      ),
      Lugar.create!(
        :nome => "Nome",
        :tipo => "Tipo",
        :cidade => nil
      )
    ])
  end

  it "renders a list of lugares" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
