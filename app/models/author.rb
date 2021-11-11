class Author < ApplicationRecord
    validates :last_name, presence: true
    
    has_many :join_table_author_papers
    has_many :papers, :through => :join_table_author_papers

    def name
        return first_name + " " + last_name  
    end 
end
