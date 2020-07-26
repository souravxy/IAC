### README

* Setting up and running a web-app on AWS cloud and handling scaling/management.

### [\*] setup.sh
 * Creating the docker image
 * Remove swarm if already a part of
 * Create docker swarm
 * When trying to scale horizontally, simply run 'swarm_token.sh' in all the machines.
 * and they will become a part of the swarm as well, and container will run on them as well.
 * Remove any existing service for cnid_infra
 * Created service for cnid_infra.
    
### [\*] Dockerfile 
 * Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image.
 * Using docker build users can create an automated build that executes several command-line instructions in succession

### [\*] hello-flask.py
 * Imported the python flask for web application development
 * Used app.route("/") which is a python decorator that Flask provides to assign URLs in our app to function easily. 
 * The decorator is communicating our @app that whenever a user visits our app domain at the given .route(), execute the Hello world() function.
  
### [\*] cloud_formation.json

 * Format version : Format version defines the capability of a template
 * Description: In this section we defines Parameters, InstanceType, Description, SSHLocation etc.   
 * Metadata : Metadata used in the template to provide the information using JSON objects.
 * Parameters : Templates can be customized using parameters. Each time we create or update the stack, parameters help you give your template custom values at runtime.
 * Mappings : It enables to map keys to a corresponding named value that you specify in a conditional parameter. Also you can retrieve values in a map by using                   "Fn::FindInMap" intrinsic function.
 * Conditions : It defines whether certain resources are created or when resource properties are assigned to a value during stack creation or updating. Conditions can be         used when you want to reuse the templates by creating  resources in different contexts. We can use intrinsic functions to define conditions.
 * In a template , during stack creation, all the conditions in your template are evaluated. Any resources that are associated with a true condition are created and the         invalid conditions are ignored automatically.
 * Resources : Using this section, you can declare the AWS resource that you want to create and specify in the stack, such as Image id, instance type, security groups,           keyname.

  
