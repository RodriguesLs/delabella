class ClientesController < ApplicationController
    before_action :configure_permitted_parameters

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:cliente, :password, :password_confirmation, :cpf])
    end
end