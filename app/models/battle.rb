class Battle < ApplicationRecord
  validates :text,:answer, length: { in: 1..20 }
  def self.search(search)
    if search
      Battle.where('text LIKE(?)', "%#{search}%")
    else
      Battle.all
    end
  end
end
