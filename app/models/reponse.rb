class Reponse < ActiveRecord::Base
  attr_accessible :answer, :question_id
  belongs_to :question 
  validates :answer, :presence => {:message => 'Vous devez faire un choix'}
  scope :answered, lambda{|reponse| where(:answer => reponse)  }
end
