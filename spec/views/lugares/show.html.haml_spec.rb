require 'rails_helper'

RSpec.describe "lugares/show", :type => :view do
  before(:each) do
    @lugar = assign(:lugar, Lugar.create!(
      :nome => "Nome",
      :tipo => "Tipo",
      :cidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(//)
  end
end
