class CookiesController < ApplicationController

	def destroy
		cookies.delete("festival_ids")
    	redirect_to root_url, notice: "History cleared."
	end

end