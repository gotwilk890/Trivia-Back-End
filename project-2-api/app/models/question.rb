class Question < ActiveRecord::Base
  include Authentication
  belongs_to :guide
end
