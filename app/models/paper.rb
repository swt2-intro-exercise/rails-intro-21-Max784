class Paper < ApplicationRecord
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true
    validates :year, numericality: { only_integer: true }

    has_many :join_table_author_papers
    has_many :authors, through: :join_table_author_papers

    scope :year, ->(time) { where("year = ?", time) }

    def self.created_before(time)
        where("created_at < ?", time)
    end
end

#rails g model JoinTableAuthorPaper author:references paper:references