class Guide < ActiveRecord::Base
  include Authentication

  belongs_to :user

  has_many :questions
end

