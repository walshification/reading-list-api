
json.(book, :title, :published_year, :status)

# Long hand syntax for dealing with associations:

json.authors book.authors do |author|
  json.name author.name
end

# Short hand syntax for associations:

# json.phone_numbers employee.phone_numbers, :number, :phone_type

# json.addresses employee.addresses, :address_1, :address_2, :city, :state, :zip

# if employee.manager
#   json.manager employee.manager, :first_name, :last_name
# end