class PagesController < ApplicationController
  
  def inicio
    @posts = Post.all
    @eventos_recentes = Evento.order(data: :desc).limit(3)
  end
    
  def sobre
    @posts = Post.all
  end
end
