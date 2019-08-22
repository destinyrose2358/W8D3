# == Schema Information
#
# Table name: questions
#
#  id      :bigint           not null, primary key
#  text    :string           not null
#  poll_id :integer          not null
#

class Question < ApplicationRecord
    validates :text, presence: true

    has_many :answer_choices,
    class_name: "AnswerChoice",
    foreign_key: :question_id

    belongs_to :poll,
    class_name: "Poll",
    foreign_key: :poll_id

    has_many :responses,
    through: :answer_choices,
    source: :responses
end
