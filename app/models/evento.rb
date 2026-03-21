class Evento < ApplicationRecord
    validates_presence_of :nome, :descricao, :local, :data, :link_ingresso
    has_one_attached :imagem_evento
end
