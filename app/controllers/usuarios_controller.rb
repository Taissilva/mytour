# -*- encoding : utf-8 -*-
class UsuariosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:usuario, {}).permit(:usuario, :login, :senha, :nome, :email_id )]
  end
end
