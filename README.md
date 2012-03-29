SpreeMulticurrency
==================

Allows you to select a currency different from the main.
This is done by overriding helper number_to_currency.
Each time you use the helper if you select a different currency exchange rate will be calculated.

The main currency can be set by the backend admin -> configuration -> configurations.

In front end will appear a select near to search bar.

Installation
---------
Add to Gemfile

    gem "spree_multicurrency", :git => "git://github.com/rdegan/spree_multicurrency.git"
    bundle install

    rails g multicurrency:install
    rake db:migrate

Create/edit exchange rate
---
    rake spree_multicurrency:refresh_currency_rate

