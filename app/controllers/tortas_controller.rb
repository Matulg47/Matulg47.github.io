class TortasController < ApplicationController
    def index
        #listar tortas
        @tortas= Torta.all 

    end

    def show
        #mostrar datos de una torta
        @torta=Torta.find(params[:id])
    end

    def new 
        #mostrar formulario de carga de una torta
        @torta=Torta.new
        puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
        render :new
    end

    # /tortas POST
    def create 
        @torta=Torta.new()
        puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

        #(torta_params)
        #crear una torta en la BD
       if @torta.save 
                redirect_to pedidos_path, notice: "Se guardo el pedido correctamentee"     
        else
            flash[:error]=" hubo un error al cargar el pedido en la BD"
        
            render :new #con este vuelve al formulario sin perder la informaciòn cargada
       end
    end
    def edit
        #mostrar formulario de edicion de una torta
    end
    def update
        #modificar los datos de una torta en la BD
    end
    def destroy
        #eliminar una torta?
    end  
    def torta_params #arreglar params
      #  params.require(:torta).permit(:producto, :a_nombre_de, :fecha_de_entrega )
    end  
end
