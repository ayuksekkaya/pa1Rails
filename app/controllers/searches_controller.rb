class SearchesController < ApplicationController

    def search
        @subject = Subject.all

        if !params[:search].blank?
            redirect_to result_path
        end
    end

    def result


        if params[:subjects].blank?
            @courses = Course.where("name LIKE ?", "%#{params[:search]}%")
          else
            @courses = Course.where(id_course: params[:subjects]).where("name LIKE ?",
                                    "%#{params[:search]}%")
          end

    end

    def create
        @enrollment = Enrollment.new(user_id: params[:user_id], course_id: params[:course_id], course_name: params[:course_name])

        if @enrollment.save
            redirect_to root_path
        else
            render 'search'
        end


    end







end
