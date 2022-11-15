class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 } 
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 40 }

  validate :at_least_mens_or_womens
    def at_least_mens_or_womens
      if  mens_apparel.present? || womens_apparel.present?
        return true
      else
        errors.add :mens_apparel, :womens_apparel, message: "must contain at least men's or women's apparel"
      end
    end
end