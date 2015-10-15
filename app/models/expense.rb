class Expense < ActiveRecord::Base
  belongs_to :category

  # Metodo para la busqueda de productos por titulo o cuerpo de la pregunta
  def self.search(concept, category_id)
    where("concept like ? AND category_id = ?", "%#{concept}%", "#{category_id}") 
  end
end
