class Payment < ActiveRecord::Base

  acts_as_indexed :fields => [:params, :status, :transaction_id]

  validates :params, :presence => true, :uniqueness => true
  
end
