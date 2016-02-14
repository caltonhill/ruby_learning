require 'mail'

# gmail options
options = {
    :enable_starttls_auto => true,
    :address => 'smtp.gmail.com',
    :port => 587,
    :authentication => 'plain',
    :user_name => 'macdonald.james@gmail.com',
    :password =>  ARGV[0]  # enter password at command line???
}

Mail.defaults do
  delivery_method :smtp,options
end

gift_givers = [
    {:name => "James", :gift => "DVD", :email => "macdonald.james@gmail.com"},
    {:name => "Pokkle", :gift => "bow and arrows", :email => "macdonald.james+pokkle@gmail.com"},
    {:name => "Angela", :gift => "cat statue", :email => "macdonald.james+angela@gmail.com"},
    {:name => "Tonpa", :gift => "juice machine", :email => "macdonald.james+tonpa@gmail.com"},
    {:name => "Toby", :gift => "necklace", :email => "macdonald.james+toby@gmail.com"},
    {:name => "Biscuit", :gift => "blue jewel", :email => "macdonald.james+biscuit@gmail.com"},
]

email_template = "
Dear {{name}}

Thank you for coming to my birthday party.
I really liked your {{gift}} present.

Best wishes
Sofia"

# iterate through data

gift_givers.each do |giver|
# for each giver create an email substituting their name and gift
  email_text = email_template.gsub('{{name}}',giver[:name]).gsub("{{gift}}",giver[:gift])
  email_address = giver[:email]
    Mail.deliver do
      from    :user_name
      to      email_address
      subject "Thank you"
      body email_text
  end
end





