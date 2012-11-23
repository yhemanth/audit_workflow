class ScopeFactory
  def self.new_scopes
    validation_names=["Petty Cash Verification","Cash keys handling"]

    scope=Scope.new({:name => "Cash Verification"})

    scope.validations << validation_names.map do |vname|
      validation = Validation.new
      validation.name = vname
      validation.status = "Not Started"
      validation
    end
    scope
  end
end
