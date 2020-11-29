class Task < ApplicationRecord
    belongs_to :category
    validates :title, presence: true,
                    length: { minimum: 3 }
    validates :details, length: { minimum: 5 }
end
