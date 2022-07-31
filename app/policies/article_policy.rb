class ArticlePolicy < ApplicationPolicy
    def create?
        user.correspondent?
    end
    
    def update?
        user.correspondent?
    end
    
    def destroy?
        user.admin?
    end   

    def index?
        true
    end
    
    def show?
        true
    end
end