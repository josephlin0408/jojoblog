class Admin::BaseController < ApplicationController
	before_action :login_required, :required_admin!

	layout 'admin.html.erb'

	protected

	#判斷如果身分不是admin就無法進入後台
	def required_admin!
		redirect_to posts_path, notice: '你沒有權限進入此頁面' unless current_user && current_user.admin?
	end
end