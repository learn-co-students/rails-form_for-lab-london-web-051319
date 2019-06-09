class SchoolClassesController < ApplicationController
   before_action :set_class, only: [:show, :edit, :update, :destroy]

   def index
      @school_classes = SchoolClass.all
   end

   def new
      @claz = SchoolClass.new
   end

   def create
      @claz = SchoolClass.create(class_params(:title, :room_number))
      redirect_to school_class_path(@claz)
   end

   def show
   end

   def edit
   end

   def update
      @claz.update(class_params(:title, :room_number))
      redirect_to school_class_path(@claz)
   end

   def destroy
      @claz.destroy
      redirect_to school_classes_path
   end

   private

   def set_class
      @claz = SchoolClass.find(params[:id])
   end

   def class_params(*args)
      params.require(:school_class).permit(args)
   end

end
