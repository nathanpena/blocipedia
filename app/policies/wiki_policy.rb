class WikiPolicy < ApplicationPolicy

def update?
  user.present?  
end

def edit?
  user.present? && record.public? 
end

def index?
  true
end

def destroy?
 user.present? && (record.user == user || user.admin? )
end

def show?
  record.public? 
end

end