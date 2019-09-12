class Art < ApplicationRecord
    belongs_to :user
    has_one_attached :image

    validates :user_id, presence: true
    validates :title, presence: true

    scope :newest, -> { order("created_at").last }
    scope :neweepdata, -> { order("updata_at").last }

    def self.letestupdCheck
      order("updated_at").last
    end

    def self.newestCheck
      order("created_at").last
    end
    
  end