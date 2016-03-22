class PagsController < ApplicationController
	before_action :get_data
	def pag1
		render layout: "landing"

	end

	def pag2
	end
	def pag3 
	end

	private
	def get_data
		@user = ['alumno1','alumno2', 'alumno3' ] 
	end

	def save_user
		if params[:name].present? && params[:lastname].present?
			user = User.new(
				name: params[:name],
				lastname: params[:lastname],
				age: params[:age],
				status: params[:status]
				)
			user.save
			redirect_to pags_pag1_path,
			flash[:notice] = 'Usuario Creado' 
		end
	end
