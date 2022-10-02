class FavoritsController < ApplicationController
    def create
     @favorit = current_user.favorits.create(phote_id: params[:phote_id])
     redirect_back(fallback_location: root_path)
    end

    def destroy
     @phote = Phote.find(params[:phote_id])
     @favorit = current_user.favorits.find_by(phote_id: @phote.id)
     @favorit.destroy
     redirect_back(fallback_location: root_path)
    end
end
