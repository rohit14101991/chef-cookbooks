# chef-cookbooks
This repo holds the  work related to chef
This repo will contain the cookbook for tomcat, mongodb, windows test case
These code is all based upon chef 

Steps to Run Mongodb #testes on ec2 kitchen instance and sample kitchen file is also added to cookbook#

# mongodb

Mode of testing  ( This cookbook was tested  on kitchen linux instance )
1) After kitchen instance is created all required configuration is completed please run kitchen converge
2) Chef if all converge is successful and all execution was up to mark 
3) Run kitchen login
4) Now switch to desired user (mongod or if you wish to configure on roo then root )
5) Run mongod 
6) If you can login to db and then create new databse with use DATABASE_NAME ( give db name )
7) run " db" ( to list your selected db )
8) if you can create db then you have successfully configured mongodb

# Tomcat

Mode of testing  ( This cookbook was tested  on kitchen linux instance )
1) After kitchen instance is created all required configuration is completed please run kitchen converge
2) Chef if all converge is successful and all execution was up to mark 
3) Run kitchen login
4) Switch to root user or any user you created with sudo access
5) run "curl http://localhost:8080"
6) Ifyou get desired result with curl then it was success 
7) If you want add the ip in base host file and then hit ip in browser, hence you will see page loaded up 
8) You can login too with the credentials added
9) This passes your test scenario

# windows

Mode of testing  ( This cookbook was tested  on kitchen windows 2016 server instance )
1) After kitchen instance is created all required configuration is completed please run kitchen converge
2) Chef if all converge is successful and all execution was up to mark 
3) Now run the kitchen verify command 
4) The test cases are witten in way to handle compliance bench,ark for windows
5) The recipe is written to meet desired compliance rule for windows server
6) If all test cases passes ie benchmark passed then desired output is accepted
7) With all green outcome the target is achieved

# Bonus

Mode of testing : These are ubuntu compatible and is not been tested, but code for same is available for reference 
1) It contains the two piece of work 
2) Middle man recipe is written and commited to same branch
3) Awesome application repair is python based and for same cookbook is available 
4) All the dependencies for both the cookbook is already taken care by recipe

