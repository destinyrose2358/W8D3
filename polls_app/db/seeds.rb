# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{username: "wistonderpius"}, {username: "flerbnerb"}, {username: "funrunweee"},
                    {username: "sharksnark32"}])

polls = Poll.create([{author_id: 3, title: "Who teh best?"}, {author_id: 1, title: "Does fun run run?"}])

questions = Question.create([{text: "Who is teh best?", poll_id: 1}, {text: "Well does he?", poll_id: 2}])

answer_choices = AnswerChoice.create([{question_id: 1, text: "its me"}, {question_id: 1, text: "anyone but me"},
                                        {question_id: 2, text: "Yes"}, {question_id: 2, text: "nope, I'm too lazy"}])

responses = Response.create([{user_id: 1, answerchoice_id: 4}, {user_id: 2, answerchoice_id: 4}, {user_id: 4, answerchoice_id: 3}])