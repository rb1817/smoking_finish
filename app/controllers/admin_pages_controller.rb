class AdminPagesController < ApplicationController
    before_action :master_id_confirm
    before_action :admin_pages

    
    def index
    end
    
    def show_nsmoking
        @nsmoke_places = Home.all
    end
    
    def show_user
        @users = User.all
    end
    
    def show_smoke_place
        @smoke_places = Product.all
    end
    
    def show_penalty_place
        @penalty_places = Product.all
    end
    
    def new_qna
        @notices = Notice.new 
    end
    
    def show_qna
        @qnas = Qna.all
    end
    
    def new_notice
        @notices = Notice.new    
    end
    
    def edit_notice
       @notices = Notice.all 
    end
    
    
    def show_notice
        @notices = Notice.all
    end
    
    def login
    end
    
    
    def admin_pages
       @admin_pages = true
    end
    
    private
    
    def master_id_confirm
        if current_user.nil?
            redirect_to '/'
        else
            @a = current_user   #    master_id        where / find    그것의 마스터 값을 true인지 확인하기.
            unless @a.masters_id == true
                redirect_to '/'
        end
        end
    end
    
end