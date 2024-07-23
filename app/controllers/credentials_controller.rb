class CredentialsController < ApplicationController
  def index
    @credentials = Credential.all.sort_by { |c| -c.weaknesses.length }
  end

  def create
    Credential.create(credentials_params)
  end

  private

  def credentials_params
    params.require(:credential).permit(:name, :email, :password)
  end
end
