# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ActiveRecord::Base.transaction do
  # User.destroy_all
  # Poll.destroy_all
  # Question.destroy_all
  # AnswerChoice.destroy_all
  # Response.destroy_all

  u1 = User.create!(username: 'sparky')
  u2 = User.create!(username: 'K')

  p1 = Poll.create!(author_id: u1.id, title: 'AA Poll')

  q1 = Question.create!(text: 'Why are my migrations failing?', poll_id: p1.id)
  ac1 = AnswerChoice.create!(text: 'Because STACK OVERFLOW', question_id: q1.id)
  ac2 = AnswerChoice.create!(text: 'You are destined to fail', question_id: q1.id)
  ac3 = AnswerChoice.create!(text: 'Rails does not like you', question_id: q1.id)

  q2 = Question.create!(text: 'Why is Rails so hard?', poll_id: p1.id)
  ac4 = AnswerChoice.create!(text: 'Rails is not that hard', question_id: q2.id)
  ac5 = AnswerChoice.create!(text: 'Rails rails rails', question_id: q2.id)
  ac6 = AnswerChoice.create!(text: 'select * join * from * where * = hello', question_id: q2.id)

  r1 = Response.create!(
    respondent_id: u2.id,
    answer_choice_id: ac3.id
  )
  r2 = Response.create!(
    respondent_id: u2.id,
    answer_choice_id: ac4.id
  )
# end