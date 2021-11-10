require 'rails_helper'

RSpec.describe Author, type: :model do
    author = Author.new(first_name: 'A', last_name: 'B', homepage: 'C.com')
    author_wrong = Author.new(first_name: 'A', last_name: '', homepage: 'C.com')

    context "create author works" do
        it "author init works" do 
            expect(author.first_name).to eq('A')
            expect(author.last_name).to eq('B')
            expect(author.homepage).to eq('C.com')
        end
    end

    context "name method works" do
        it "author.name works" do 
            expect(author.name).to eq('A B')
            
        end
    end

    it "last name not blank" do
        expect(author_wrong).to_not be_valid     
    end 
    
    pending "add some examples to (or delete) #{__FILE__}"
end


