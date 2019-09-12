class Role < ActiveRecord::Base
  has_many :users

  scope :artistscope, -> { where(role_name: 'artist') }
  scope :userscope, -> { where(role_name: 'user') }

end