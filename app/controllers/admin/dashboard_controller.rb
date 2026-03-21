class Admin::DashboardController < PagesController
  before_action :authenticate_administrador!
  layout 'admin'
  def index
    @total_posts = Post.count
    @total_eventos = Evento.count
    @total_inscricaos = Inscricao.count

    @admin = current_administrador

  end
end