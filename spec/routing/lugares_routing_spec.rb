require "rails_helper"

RSpec.describe LugaresController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lugares").to route_to("lugares#index")
    end

    it "routes to #new" do
      expect(:get => "/lugares/new").to route_to("lugares#new")
    end

    it "routes to #show" do
      expect(:get => "/lugares/1").to route_to("lugares#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lugares/1/edit").to route_to("lugares#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lugares").to route_to("lugares#create")
    end

    it "routes to #update" do
      expect(:put => "/lugares/1").to route_to("lugares#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lugares/1").to route_to("lugares#destroy", :id => "1")
    end

  end
end
