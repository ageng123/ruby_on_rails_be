class ApplicationController < ActionController::API
    
    
    def cors_set_access_control_headers
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
        headers['Access-Control-Request-Method'] = '*'
        headers['Access-Control-Allow-Headers'] = 'Origin, Access-Control-Allow-Origin, X-Requested-With, Content-Type, Accept, Authorization'
        render json: {sukses: true}, status: :accepted
    end

    def set_cors_header
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
        headers['Access-Control-Request-Method'] = '*'
        headers['Access-Control-Allow-Headers'] = 'Origin, Access-Control-Allow-Origin, X-Requested-With, Content-Type, Accept, Authorization'
        # render json: {message: "sukses"}, status: 201
    end

end
