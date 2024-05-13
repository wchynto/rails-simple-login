class PagesController < ApplicationController

  def index

  end

  def secret
    if current_user.blank?
      render plain: '401 Unauthorized', status: :unauthorized
    end
  end
end
