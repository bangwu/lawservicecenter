class Consult < ApplicationRecord
  enum question_type: [ :complain, :feedback, :flow, :justice, :law, :register ]
end
