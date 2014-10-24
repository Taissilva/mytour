# -*- encoding : utf-8 -*- 
class LugaresController < InheritedResources::Base
	def build_resource_params 
        [params.fetch(:lugar, {}).permit(:lugar, :nome, :tipo, :cidade_id)] 
  
    end 
end
