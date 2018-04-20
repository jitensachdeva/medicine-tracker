json.extract! medicine, :id, :name, :detailed_name, :quantity_per_package, :notes, :created_at, :updated_at
json.url medicine_url(medicine, format: :json)
