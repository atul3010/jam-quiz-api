module Paginatable
  extend ActiveSupport::Concern

  def paginate(page, limit = 5)
    page = page ? page.to_i : 1
    limit = limit.to_i
    offset = (page - 1) * limit
    self.offset(offset).limit(limit)
  end
end
