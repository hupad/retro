module Api
  module V1
    class UsersController < ApplicationController
      protect_from_forgery
      skip_before_action :verify_authenticity_token
      
      def create

        @user = User.new
        binding.pry
        @user.email = params[:email].downcase
        @user.password = params[:password]
        
        if @user.save
          render status: 200, json: {
            message: 'Success',
            content: @user
          }
        else
          render status: 400, json: {
            message: @user.errors.full_messages.join(", "),
          }
        end

      end

      def show
        
        @user = User.find(params[:id])
        @user[:avatar_file_name] = @user.avatar.url(:thumb)
        render status: 200, json: {
          message: 'Success',
          content: @user
        }.to_json
      end

      def login

        email = user_params[:email]
        password = user_params[:password]

        user = User.find_for_database_authentication(
          email: email
        )

        if user && user.valid_password?(password)
          render status: 200, json: {
              message: 'Success',
              content: user
          }.to_json
        else
          render status: 404, json: {
            message: 'User not found'
          }.to_json
        end
      end

      def delete
        
      end

      private

      def user_params
        params.permit(:id, :email, :password)
      end

    end
  end
end
