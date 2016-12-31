# Flask - the Micro Frame Work to develop web app
Keep Core Simple, not determine the database, front end template, and so on. 


# 2.Routing
use @app.route() to define the url Routing,different kinds of parameters are show as below
## 2.1. Default routing (GET)
1. @app.route("/") @app.route("/index") @app.route("/users/"):which will directly call the url according to the pattern, while becareful whether has the "/" 
2. @app.route("/users/<datatype: user_id>"), the datatype can be as below

| Data type     | remarks       |
| ------------- |:-------------:|
|string	|accepts any text without a slash (the default)
|int	|accepts integers
|float	|like int but for floating point values
|path	|like the default but also accepts slashes
|any	|matches one of the items provided
|uuid	|accepts UUID strings

## 2.2. HTTP Method
3. @app.route("/login",methods=["GET","POST"])