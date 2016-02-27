class Article < ActiveRecord::Base
  has_many :comments, dependant: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end