class Phote < ApplicationRecord
    belongs_to :user
    has_many :favorits, dependent: :destroy
    
    with_options presence: true do
        validates :title
        validates :body
    end
end
