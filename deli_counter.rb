def line(customers)
    if customers.length() == 0
        puts "The line is currently empty."
    else
        str1 = "The line is currently:"
        str2 = ""
        linenum = 0
        customers.each_with_index do |customer, index|
            str2 = "#{str2} #{index +1}. #{customer}"
        end
        str1 = str1 + str2
        puts str1    
    end         
end   

def take_a_number(customers, new_customer)
    if customers.length() == 0
        puts "Welcome, #{new_customer}. You are number 1 in line."
        customers << new_customer
        return customers
    else
        puts "Welcome, #{new_customer}. You are number #{customers.length()+1} in line."
        customers.push(new_customer)
        return customers   
    end
end    

def now_serving(customers)
    if customers.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{customers.first}."  
        return customers.shift()
    end    
end    

#line(["Logan", "Avi", "Spencer"])