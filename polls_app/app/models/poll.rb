# == Schema Information
#
# Table name: polls
#
#  id        :bigint           not null, primary key
#  author_id :integer          not null
#  title     :string           not null
#

class Poll < ApplicationRecord
    validates :title, presence: true, uniqueness: true

    belongs_to :author,
    class_name: "User",
    foreign_key: :author_id

    has_many :questions,
    class_name: "Question",
    foreign_key: :poll_id
end
