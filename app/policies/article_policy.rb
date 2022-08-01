class ArticlePolicy < ApplicationPolicy
    def create?
        user.correspondent?
    end
    
    def update?
        user.correspondent? || user.editor?
    end
    
    def destroy?
        user.admin? || user.editor?
    end   

    def index?
        true
    end
    
    def show?
        true
    end
end