# == Schema Information
#
# Table name: responses
#
#  id              :bigint           not null, primary key
#  user_id         :integer          not null
#  answerchoice_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Response < ApplicationRecord
    validate :not_duplicate_response

    belongs_to :answer_choice,
    class_name: "AnswerChoice",
    foreign_key: :answerchoice_id

    belongs_to :respondent,
    class_name: "User",
    foreign_key: :user_id

    has_one :question,
    through: :answer_choice,
    source: :question

    def not_duplicate_response
        if self.sibling_responses.where(user_id: self.user_id).count > 0
            errors.add(:user_id, "duplicate responses are not allowed")
        end
    end
    
    def sibling_responses
        self.question.responses
    end
end

