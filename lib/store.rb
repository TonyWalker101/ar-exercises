class Store < ActiveRecord::Base
  has_many :employees
  validates :annual_revenue, numericality: { greater_than: 0 }
 
  validates :name, presence: true, length: {minimum: 3}

  validate :unisex_apparel

  def unisex_apparel
    unless mens_apparel == true && womens_apparel == true
      errors.add( :mens_apparel, "We need both men and women's apparel!")

      errors.add( :womens_apparel, "We need both men and women's apparel!")
    end
  end

end
