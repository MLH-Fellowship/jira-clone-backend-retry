# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur viverra tortor in nisl consequat pretium.
Mauris blandit maximus ante ut ullamcorper. Mauris quis quam diam. Fusce condimentum nisi in rhoncus fringilla.
Etiam ac tellus faucibus nunc rutrum convallis. Maecenas auctor imperdiet ipsum, eget condimentum quam molestie vitae.
Mauris nec elit in lorem dignissim aliquam."

# Default statuses for Projects
Status.create(name: 'Open')
Status.create(name: 'In Progress')
Status.create(name: 'In Review')
Status.create(name: 'Closed')

# Default statues for Teams
Team.create(name: 'No Name')
Team.create(name: 'Team One')
Team.create(name: 'Team Two')

# Default users
User.create(first_name: 'John', last_name: 'Doe', email: 'john@doe.com', password: 'password', team_id: 1)
User.create(first_name: 'Jake', last_name: 'Molly', email: 'molly@doe.com', password: 'password', team_id: 1)
User.create(first_name: 'Archer', last_name: 'Bellmont', email: 'hanky@doe.com', password: 'password', team_id: 1)
User.create(first_name: 'Brandon', last_name: 'Potts', email: 'pinky@doe.com', password: 'password', team_id: 2)
User.create(first_name: 'Dena', last_name: 'Burd', email: 'tommy@doe.com', password: 'password', team_id: 3)

# Default Projects
Project.create(title: 'This is a random title for a project', content: content, date_published: Time.now, teams_id: 2)
Project.create(title: 'This is a random title for another project', content: content,
               date_published: Time.now, teams_id: 3)


# Default Tickets
Ticket.create(project_id: 1, status_id: 1, title: 'Ticket One', description: content, date_posted: Time.now, user_id: 4)
Ticket.create(project_id: 1, status_id: 1, title: 'Ticket Two', description: content, date_posted: Time.now, user_id: 4)
Ticket.create(project_id: 2, status_id: 1, title: 'Ticket One', description: content, date_posted: Time.now, user_id: 5)
Ticket.create(project_id: 2, status_id: 1, title: 'Ticket Two', description: content, date_posted: Time.now, user_id: 5)

# Default comments
Comment.create(content: content, user_id: 1, project_id: 2, ticket_id: 1)
Comment.create(content: content, user_id: 2, project_id: 2, ticket_id: 2)
Comment.create(content: content, user_id: 3, project_id: 3, ticket_id: 3)
