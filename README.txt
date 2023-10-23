There is a basic projects for Robot automation frameworks based on Java for frontend.

To run test framework it is necessary to:
1. Install Python and add a path of  the python directory in an environment variable 
2. Put Firefox WebDriver (geckodriver) to the python directory.
3. Download the project.
4. In a terminal run 'robot --listener allure_robotframework:./results/allure  test.robot' command.
5. Run 'allure serve ./results/allure ' command to see an allure report. 
