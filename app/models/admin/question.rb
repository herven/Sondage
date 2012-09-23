class Admin::Question < ActiveRecord::Base
  attr_accessible :answer_1, :answer_2, :title
  has_many :reponses
  
end
