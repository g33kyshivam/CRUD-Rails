class Article < ActiveRecord::Base
    
    validates :title, :author, :content, presence: true
    validates :content, length: { minimum: 15 }
end
