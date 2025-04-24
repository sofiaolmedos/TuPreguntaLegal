class AbogadosController < ApplicationController

    def index
        @abogados = Abogado.all
    end

    def new
        @abogado = Abogado.new
    end

    def create
        @abogado = Abogado.new(abogado_params)
        if @abogado.save
            redirect_to abogados_path, notice: 'Abogado creado con éxito.'
        else
            render :new
        end
    end

    def edit
        @abogado = Abogado.find(params[:id])
    end

    def update
        @abogado = Abogado.find(params[:id])
        
        if @abogado.update(abogado_params)  
          redirect_to abogados_path, notice: 'Abogado actualizado con éxito.'
        else
          render :edit, status: :unprocessable_entity 
        end
    end

    def destroy
        @abogado = Abogado.find(params[:id])
        @abogado.destroy
        redirect_to abogados_path, notice: 'Abogado eliminado con éxito.'
    end

    def abogado_params
        params.require(:abogado).permit(:name, :specialty, :email, :phone)
    end
end
