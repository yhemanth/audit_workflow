class Scope < ActiveRecord::Base
  belongs_to :audit
  attr_accessible :name,:validations_attributes
  has_many :validations
  accepts_nested_attributes_for :validations
end
