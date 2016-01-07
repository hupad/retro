class Api::V1::TeamsController < ApplicationController
  def index
    @teams = Team.all
    render status: 200, json: {
      message: 'Success',
      content: @teams
    }.to_json
  end
end
