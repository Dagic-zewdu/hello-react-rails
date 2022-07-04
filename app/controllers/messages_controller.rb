# frozen_string_literal: true

class MessagesController < ApplicationController
  def index
    id = rand(1..Message.count)
    if id.nil?
      render json: { error: 'not found' }.to_json, status: 404
    else
      @message = Message.find(id)
      render json: @message
    end
  end
end
