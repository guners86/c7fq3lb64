class Expense < ActiveRecord::Base
  belongs_to :category

  # Metodo para la busqueda de productos por titulo o cuerpo de la pregunta
  def self.search(query)
    where("concept like ? ", "%#{query}%") 
  end
end
