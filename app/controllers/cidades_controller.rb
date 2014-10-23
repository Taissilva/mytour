# -*- encoding : utf-8 -*-
class CidadesController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:cidade, {}).permit(:nome, :país, :estado)]
  end
end
