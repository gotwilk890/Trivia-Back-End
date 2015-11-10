#
class User < ActiveRecord::Base
  include Authentication

  has_many :guides
end
