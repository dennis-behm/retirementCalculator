# retirementCalculator sample application

This is a simple COBOL Batch application.

`EBUDORUN` takes a data as input parameters via SYSIN and will call EBUD01, that calls EBUD02 and EBUD03 to compute the retirement date.

The computed retirement date is displayed.

**Configuration**

This application can be built with IBM Dependency Based Build and zAppBuild.

It contains a `zapp.yaml` configuration file to setup a _property group_ and a _DBB user build_ profile to configure Z Open Editor. It also contains a Eclipse project definition (`.profile`) that allows users to import the project into IBM Developer for zSystems.
