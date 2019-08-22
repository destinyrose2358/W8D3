# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  question_id :integer          not null
#  text        :string           not null
#

class AnswerChoice < ApplicationRecord
    validates :text, presence: true

    belongs_to :question,
    class_name: "Question",
    foreign_key: :question_id

    has_many :responses,
    class_name: "Response",
    foreign_key: :answerchoice_id


end
