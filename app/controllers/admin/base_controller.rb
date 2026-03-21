module Admin
  class BaseController < ApplicationController
      layout 'admin'
      before_action :authenticate_administrador!
  end
end