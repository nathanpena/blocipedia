class WikiPolicy < ApplicationPolicy

def update?
  user.present?  
end

def edit?
  update?
end

def index?
  true
end

def destroy?
 user.present? && (record.user == user || user.admin? )
end

def show?
  true 
end

end