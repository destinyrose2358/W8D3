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
    

    belongs_to :answer_choice,
    class_name: "AnswerChoice",
    foreign_key: :answerchoice_id

    belongs_to :respondent,
    class_name: "User",
    foreign_key: :user_id
end
