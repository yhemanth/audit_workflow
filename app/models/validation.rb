class Validation < ActiveRecord::Base
  acts_as_commentable

  belongs_to :scope
  attr_accessible :auditee_id, :description
  belongs_to :auditee, :class_name => 'User', :foreign_key => 'auditee_id'
end
