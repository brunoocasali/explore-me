module Admin
  class ApplicationController < ::ApplicationController
    respond_to :js, :html

    before_action :authenticate_user!

    layout 'admin'
  end
end
