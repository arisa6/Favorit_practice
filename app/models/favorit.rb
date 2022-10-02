class Favorit < ApplicationRecord
    belongs_to :user
    belongs_to :phote
    
    validates_uniqueness_of :phote_id, scope: :user_id
end
