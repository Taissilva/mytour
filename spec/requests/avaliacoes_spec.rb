require 'rails_helper'

RSpec.describe "Avaliacoes", :type => :request do
  describe "GET /avaliacoes" do
    it "works! (now write some real specs)" do
      get avaliacoes_path
      expect(response.status).to be(200)
    end
  end
end
