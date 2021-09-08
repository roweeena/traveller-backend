class UsersController < ApplicationController
require 'httparty'

  def index
     @users = User.all
      if @users
         render json: {
         users: @users
      }
     else
         render json: {
         status: 500,
         error: ['No user found']
     }
    end
  end

  def show
    user = User.find(params[:id])
    trip = Trip.all.where(user_id: params[:id])
    if user
       render json: {
       user: user,
       trip: trip
    }
    else
       render json: {
       status: 500,
       errors: ['Account not found']
     }
    end
  end

  def create_user
resp = HTTParty.post("https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=#{ENV['FIREBASE_API_KEY']}",
        :body => {
            name: params[:name],
            email: params[:email],
            password: params[:password]
            }.to_json,
        :headers => {'Content-Type' => 'application/json'}
        )

        if resp.key?('idToken')
            User.create(name: resp["name"], email: resp["email"], uid: resp["localId"])
            return {message: 'Success', token: resp['idToken']}
        else
            return {message: resp["error"]["errors"][0]}
        end
end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
