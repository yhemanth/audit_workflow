class Audit < ActiveRecord::Base
  attr_accessible :auditor_id, :due_date, :name, :store, :scopes_attributes,:validations_attributes
  belongs_to :auditor, :class_name => 'User', :foreign_key => 'auditor_id'
  has_many :scopes

  accepts_nested_attributes_for :scopes

  after_initialize do |audit|
   add_scopes_and_validations(audit)
  end

  def status
    #TODO
  end

  private
    def add_scopes_and_validations(audit)
      return  unless audit.new_record?
      audit.scopes << ScopeFactory.new_scopes
    end
end
