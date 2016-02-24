NOTES.md

How to Build a CLI Gem

1. Plan your gem, imagine your interfac
2. Start with the promect structure - google
3. Start with the entry point - the file run
4. force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects
8. program


- A command line interface for beaches, starting with Florida

user types in best_beaches
show a list of beaches
1. miami beach - location

select a beach
more information about the beach

what is a beach
1.name
2.location
3.description

how I proceeded in making this project:
the first thing I did was gather information about what the project was about. I watch the video and read the websites such as bundler gem to learn more about making gems.
Making a gem was easy enough however a problem that surface was how to manage all of the dependancies. Where was I going to put all of the require statements? For this I turned to the CLI walkthrough and just did what it did which was to create a file that contained all of these statments.I was the file best_beaches.rb. i then required this file in the executable file bin/best_beaches. 