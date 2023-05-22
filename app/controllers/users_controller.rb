class UsersController < ApplicationController
    def index
        #listar usuarios
        @usuarios= User.all 

    end

    def show
        #mostrar datos de un pedido
        @user=User.find(params[:id])
    end

    def new 
        #mostrar formulario de carga de un pedido
        @user=User.new
    end

    # /pedidos POST
    def create 
        @user=User.new(user_params)
        #crear un pedido en la BD
       # @pedido = Pedido.create(producto: params[:pedido][:producto], descripcion params[:pedido][:descripcion])
       #otra opcion es: 
       #@pedido= Pedido.create(params.require(:pedido).permit(:producto, :descripcion))
       # el .create crea y persiste y el .new crea pero no persisten en la BD hay que agregar un .save
        puts 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
      
       if @user.save
            redirect_to pedidos_path, notice: "Se guardo el pedido correctamentee"
       else
            flash[:error]=" hubo un error al cargar el pedido en la BD"
            render :new #con este vuelve al formulario sin perder la informaciòn cargada
       end
    end
    def edit
        #mostrar formulario de edicion de un pedido
    end
    def update
        #modificar los datos de un pedido en la BD
    end
    def destroy
        #eliminar un pedido?
    end  
    def user_params
        params.require(:user).permit(:a_nombre_de)
      end 
end
