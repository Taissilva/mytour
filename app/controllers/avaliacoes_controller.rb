class AvaliacoesController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:avaliacao, {}).permit(:avaliacao, :positiva, :negativa, :usuario_id, :cidade_id, :lugar_id )]
  end
end
