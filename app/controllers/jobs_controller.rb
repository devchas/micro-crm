class JobsController < ApplicationController

	# GET /jobs
	def index
		@jobs = Job.all
	end

	# GET /jobs/new
	def new
		@job = Job.new
	end

	# POST /jobs
	def create
		@job = Job.new(job_params)

		if @job.save 
			respond_to do |format|
				format.html { redirect_to jobs_url }
			end
		else
			format.html { render :new }
		end
	end

	# GET /jobs/:id/edit
	def edit
		@job = Job.find(params[:id])
	end

	# PATCH /jobs/:id
	def update
		@job = Job.find(params[:id])

		@job.update(job_params)

		if @job.save 
			respond_to do |format|
				format.html { redirect_to jobs_url }
			end
		else
			format.html { render :new }
		end
	end

	# DELETE /jobs/id
	def destroy
		Job.find(params[:id]).destroy
		redirect_to jobs_url
	end


	def job_params
		params.require(:job).permit(:company, :position, :link, :status, :notes)
	end

end