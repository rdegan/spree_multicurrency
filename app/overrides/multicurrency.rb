Deface::Override.new(:virtual_path => "spree/admin/general_settings/show",
                     :name => "multicurrency_show",
                     :insert_bottom => "table[data-hook='preferences']",
                     :partial => "spree/admin/shared/show_multicurrency",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/general_settings/edit",
                     :name => "multicurrency_edit",
                     :insert_bottom => "fieldset#preferences",
                     :partial => "spree/admin/shared/edit_multicurrency",
                     :disabled => false)

Deface::Override.new(:virtual_path  => "spree/layouts/spree_application",
                     :name => "select_currency",
                     :insert_after => "div#site_search",
                     :partial => "spree/shared/select_currency")

