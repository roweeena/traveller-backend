class SessionsController < ApplicationController

  def create
          resp = HTTParty.post("https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=#{ENV['FIREBASE_API_KEY']}",
          :body => {
              email: params['email'],
              password: params['password'],
              returnSecureToken: true
          }.to_json,
          :headers => {'Content-Type' => 'application/json'}
          )

          if resp.key?("idToken") 
              render json: {message: "Successfully logged in!", token: resp['idToken'], localId: resp['localId']}
          else
              render json: {message: "Error logging in!", error: resp["error"]}
          end
      end

def is_logged_in?
    if logged_in? && current_user
      render json: {
        logged_in: true,
        user: current_user
      }
    else
      render json: {
        logged_in: false,
        message: 'no such user'
      }
    end
  end
def destroy
    logout!
    render json: {
      status: 200,
      logged_out: true
    }
  end
private
def session_params
    params.require(:user).permit(:name, :email, :password)
  end
end
