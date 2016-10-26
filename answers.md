# Q0: Why is this error being thrown?
We don't have a model called Pokemon yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the HomeController, it samples from all the pokemon (which we seeded) where trainer is nil.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button that sends a patch request to capture_path (which I had redirect to my pokemon controller) giving it the params of the pokemon you want to capture.

# Question 3: What would you name your own Pokemon?
Porygoff

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainer_path(id: params[:trainer]), and I required that the damage method take in a trainer param as well as a pokemon so it would know which page to redirect to after. I guess I could have just as easily grabbed the trainer id from the pokemon instead. The trainer_path basically generates the path for a given trainer using their id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
If creating @pokemon returns an error, then it will have the attribute .errors, which you can convert to a sentence and pass into flash

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
