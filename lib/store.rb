class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than:0 }
  validate :store_must_carry_at_least_men_or_women_apparel

  def store_must_carry_at_least_men_or_women_apparel
    if (!womens_apparel) && (!mens_apparel)
      errors.add(:name, "Store must carry at least men or women's apparel")
    end
  end
end
