class Material < ActiveRecord::Base
    has_many :comments
    belongs_to :users
end