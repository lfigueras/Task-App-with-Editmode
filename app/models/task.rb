class Task < ApplicationRecord
    belongs_to :category
    belongs_to :user
    

    validates :title, presence: true,
                    length: { minimum: 3 }
    validates :details, length: { minimum: 5 }
    
end
