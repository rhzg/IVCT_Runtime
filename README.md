# IVCT Runtime


To use this example

1) Set the global variable  IVCT_HOME  to the absolute path of the folder where the   IVCTconfig.xml  file is located.

2) Edit the  IVCTconfig.xml   to set the absolute path of the folders of  sutDir  and  testSuites  these can stay where they were extracted from the zip files or moved to another folder of the file system as desired.

3) To add a new test suite to the system:

3.1) Add the new test suite folder to the  IVCTrun  folder.

3.2) Edit the  IVCTrun\IVCTtestsuites.xml and add the testSuite name and the packageName for the new test suite.

3.3) Create the new  TcParam.json  to describe the test case parameters required for the new test suite.
