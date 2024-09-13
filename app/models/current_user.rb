class CurrentUser < ActiveSupport::CurrentAttributes
  attr_accessor :data
  attribute :user

  def self.exists?
    !!self.data
  end
end