class Cat < ActiveRecord::Base

  validates :nickname, presence: true

  def to_param
    "#{id}-#{name.parameterize}"
  end

end
