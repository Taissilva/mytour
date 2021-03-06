# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.describe "emails/new", :type => :view do
  before(:each) do
    assign(:email, Email.new(
      :emails => "MyString"
    ))
  end

  it "renders new email form" do
    render

    assert_select "form[action=?][method=?]", emails_path, "post" do

      assert_select "input#email_emails[name=?]", "email[emails]"
    end
  end
end
