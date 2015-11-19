class Expense < ActiveRecord::Base
  belongs_to :category

  # Metodo para la busqueda de productos por titulo o cuerpo de la pregunta
  def self.search(concept, category_id)
    if category_id != 0
      where("concept like ? AND category_id = ?", "%#{concept}%", "#{category_id}") 
    else
      where("concept like ? ", "%#{concept}%") 
    end
  end
end
