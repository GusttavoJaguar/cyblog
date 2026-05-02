class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates_presence_of :titulo, :conteudo
  has_one_attached :imagem_capa
  has_many :comments, dependent: :destroy
end
