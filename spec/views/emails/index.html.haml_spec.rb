require 'rails_helper'

RSpec.describe "emails/index", :type => :view do
  before(:each) do
    assign(:emails, [
      Email.create!(
        :emails => "Emails"
      ),
      Email.create!(
        :emails => "Emails"
      )
    ])
  end

  it "renders a list of emails" do
    render
    assert_select "tr>td", :text => "Emails".to_s, :count => 2
  end
end
