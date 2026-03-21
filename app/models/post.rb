class Post < ApplicationRecord
  validates_presence_of :titulo, :conteudo
  has_one_attached :imagem_capa
  has_many :comments, dependent: :destroy
end
