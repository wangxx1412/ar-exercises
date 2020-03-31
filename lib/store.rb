class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, message: "Name: Must be longer than 2 characters" }
  validates :annual_revenue, numericality: { only_integer: true, greater_than:0, message:"Annual Revenue: Only interger larger than 0 is OK" }
  validate :store_must_carry_at_least_men_or_women_apparel

  def store_must_carry_at_least_men_or_women_apparel
    if (!womens_apparel) && (!mens_apparel)
      errors.add(:mens_apparel, "Apparel: Store must carry at least men or women's apparel")
    end
  end
end
