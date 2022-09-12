class User < ActiveRecord::Base
    has_many :materials
end