# Let's make something new: Combining this week's info

__Note:__ If you see a 🌶 , this represents that it is a bonus portion that has some spice to it.

## Step 1: Let's start with the setup

Complete the following in the __server__ folder:
* create an __app.js__ file
* create a __routes__ folder
* create a __.env__ file (start by defining your PORT)
* install all dependencies

## Step 2: Set up your __app.js__ file
* Make sure to require everything you need to, set up express, and have your app listen on the port that you set in your __.env__ file
* Set up your root so that if you perform a 'GET' method on that page, you will receive the following response:

```json
{
  "message": "Welcome to the Initial D database!",
    "pages": "/drivers, /courses, /teams"
}
```
* Make sure to set a default error response if your server hits a page that doesn't have a route


## Step 3: It's the sql before the actual movie!

Write the proper SQL statements in the __seed-data.sql__ file to create the following tables in your .sql file:

- Drivers
    - `id` - the driver's primary key (have it auto increment)
    - `name` - first name of the driver
    - `home_course` - home course of the driver
    - `team_id` - connect driver to team (can set to default with null)
- Cars
    - `id` - the car's primary key (have it auto increment)
    - `make` - make of car
    - `model` - the model of the car
- Teams
    - `id` - the team's primary key (auto increment)
    - `name` - the team's name

Make a join table (car_owners) so that you can link drivers with their cars (note that some drivers will have the same make/model, which we will say is the same car).

Notice that the insert records are already written for you.
### __You're welcome.__

Check the __seed-data.sql__ file to double check your **CREATE** statements match the **INSERT** statements.

Create your database using sqlite3 and read your seed-data file.

Verify everything works by `SELECT`ing all rows and columns in the `drivers`, `teams`, and `cars` tables.

Add the environment variable __data_source__ with the name of the database file.

## Step 4: Take a different route? But of __course__.

Create a __courses__ route (js file) that will handle the following:
* Make sure to instantiate SQLITE and the database
* __'GET /courses'__ - will return a list of all unique course names
* 🌶 __'GET /courses/:name'__ - will return a list of all the drivers' names and cars (make & model) whose home course is __:name__
    * pay attention to the input for :name... make sure that you set up some js code to handle it so that it will always match the name in the db
* 🌶  __'PUT /courses/:name'__ - edit a course's name for all drivers that have that course as their home course
    * pay attention to the input for :name... make sure that you set up some js code to handle it so that it will always match the name in the db (Looking over subqueries might be helpful)

Make sure to connect the route to the main app.js file.

## Step 5: You have to route for your team, right?

Create a __teams__ route (js file) that will handle the following:
* Make sure to instantiate SQLITE and the database
* __'GET /teams'__ - will return a list of all unique team names
* 🌶🌶 __'GET /teams/:name'__ - will return a list of all the drivers' names and cars (make & model) that are on that team
    * pay attention to the input for :name... make sure that you set up some js code to handle it so that it will always match the name in the db
* __'POST /teams'__ - will create a new team
* 🌶🌶 __'PUT /teams/:name/:driver'__ - will change the input driver's team to the team **:name**d

Make sure to connect the route to the main app.js file.

## Step 6: Name that driver!

Create a __drivers__ route (js file) that will handle the following:
* Make sure to instantiate SQLITE and the database
* __'GET /drivers'__ - will return a list of all drivers' names
* 🌶🌶 __'GET /drivers/:name'__ - will return the driver's name, home course, team, and car (make & model)
    * pay attention to the input for :name... make sure that you set up some js code to handle it so that it will always match the name in the db
* 🌶 __'PUT /drivers/:name'__ - edit a driver's name, home course, and team id
    * pay attention to the input for :name... make sure that you set up some js code to handle it so that it will always match the name in the db
* 🌶🌶 __'POST /drivers'__ - will create a new driver (example of the correct fields are below). Make sure that you connect the driver with their car using the join table. Looking over subqueries might be helpful

```json
{
        "name": <name>,
 "home_course": <course-name>,
     "team_id": <team-id>,
    "car_make": <car-make>,
   "car_model": <car-model>
}
```

Make sure to connect the route to the main app.js file.

## Step 7: Driver Test time!

Open **Postman** and test your queries.

### **GREAT JOB WITH FINISHING THIS!!**
