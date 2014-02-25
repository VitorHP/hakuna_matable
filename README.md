[![Code Climate](https://codeclimate.com/github/VitorHP/hakuna_matable.png)](https://codeclimate.com/github/VitorHP/hakuna_matable)

# Hakuna Matable

Hakuna Matable is a gem to generate table where you can edit lots of records in one strike,

## Instalation

Add this line to your Gemfile

> gem 'hakuna_matable'

And then execute

> $ bundle install

Or install it yourself as:

> $ gem install hakuna_matable

## Usage

Say you have a model like

```ruby
class Product < ActiveRecord::Base
end
```

and a controller like

```ruby
class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
end
```

In your app/views/products/index.html.haml, just do this:

```ruby
= hakuna_matable @products
```

You'll end up with a table containing all the Product's model fields.

If you don't want to display all the fields on the table, you can pass a :fields option and render only what you'd like

```ruby
= hakuna_matable @products, fields: [:name, :size]
