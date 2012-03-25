module Admin
  class PaymentsController < Admin::BaseController

    crudify :payment,
            :title_attribute => 'status', :xhr_paging => true

  end
end
