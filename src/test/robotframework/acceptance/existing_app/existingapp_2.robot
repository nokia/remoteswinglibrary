*** Settings ***
Library    RemoteSwingLibrary          debug=True
Library    OperatingSystem
Suite setup    Set Environment Variable      CLASSPATH     target/test-classes

*** Test Cases ***
Connecting to existing application on selected port and close it
     Application Started  myapp2  5 seconds  \  31337
     System Exit
