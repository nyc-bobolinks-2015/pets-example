class Dog < ActiveRecord::Base
  validates :breed, presence: true
  validate :dog_is_young
  
  private
  
  def dog_is_young
    if date_of_birth < Date.parse('2015-01-01')
      errors.add(:date_of_birth, "Must be after Jan 1 2015")
      errors.add(:base, 'Some random message')
    end
  end
end