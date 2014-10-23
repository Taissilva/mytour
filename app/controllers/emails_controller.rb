class EmailsController < InheritedResources::Base
  def build_resource_params
        [params.fetch(:email, {}).permit(:emails)]
  end
end
