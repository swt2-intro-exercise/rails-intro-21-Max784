class JoinTableAuthorPaper < ApplicationRecord
  belongs_to :author
  belongs_to :paper
end
