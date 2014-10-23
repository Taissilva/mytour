# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.describe "emails/show", :type => :view do
  before(:each) do
    @email = assign(:email, Email.create!(
      :emails => "Emails"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Emails/)
  end
end
