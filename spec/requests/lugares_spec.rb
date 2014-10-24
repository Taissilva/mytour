require 'rails_helper'

RSpec.describe "Lugares", :type => :request do
  describe "GET /lugares" do
    it "works! (now write some real specs)" do
      get lugares_path
      expect(response.status).to be(200)
    end
  end
end
