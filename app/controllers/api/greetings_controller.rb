# app/controllers/api/greetings_controller.rb

class Api::GreetingsController < ApplicationController
  def random_greeting
    random_message = Message.order('RANDOM()').first
    render json: { greeting: random_message.greeting }
  end
end
