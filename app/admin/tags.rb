# frozen_string_literal: true

ActiveAdmin.register Tag do
  permit_params do
    [:name, :order, :color]
  end
  filter :name, as: :select
end
