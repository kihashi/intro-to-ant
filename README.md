# Progress User Group Ant Demo

## About

This project is meant to showcase Apache Ant for OpenEdge Developers. It
includes some basic code as well as a basic build.xml file. It accompanies
the presentation "Building Your Ant Colony: Designing An Automated Build System
with Apache Ant" presented at the PUG Challenge Americas 2017.

Slides for that talk are available here:
https://speakerdeck.com/jcleaver/intro-to-ant

# Setup

## Setting up Ant

Fortunately, Ant is already installed alongside PDSOE. This guide assumes that
you already have PDSOE installed. This guide also assumes that you are on a
Windows platform. While the gist of it is the same for OS X, the mechanics of
setting environment variables is very different.

Throughout, I will use `$DLC` to refer to the OpenEdge install directory.
Whenever you see that, replace it with the path to your OpenEdge install.

### Setting Environment Variables

1. To access environment variables, type `environment variables` in the start menu.
![Start Menu Search](https://cloud.githubusercontent.com/assets/610242/26805494/33373446-4a1a-11e7-99dc-ddc61f856c19.png)
2. Select the option to"Edit the System Envirionment Variables"
3. On the bottom of the "Advanced" tab, click the "Environment Variables" button.
4. If it isn't already, add `JAVA_HOME` with a value of `$DLC\jdk`
5. Add a new system variable called `ANT_HOME` with a value of
`$DLC\oeide\eclipse\plugins\org.apache.ant_1.8.4.v201303080030`.
     * Note that the version number might not be exact. This is the number for
       11.6.2. Check the `plugins` folder to make sure you have the right one.
6. Add the `bin` directory to your `PATH` variable.
    * The `PATH` is a semi-colon delimited list. When you edit it, make sure to
      put a semi-colon after the last entry if there isn't one and then add
      `$DLC\oeide\eclipse\plugins\org.apache.ant_1.8.4.v201303080030\bin;` to
      the end.
        * As above, make sure to use the correct version number for the Ant
          folder.

## Installing PCT

For in-depth and up-to-date information, please see the [PCT Wiki][1].

1. Download the latest PCT Jar file from the [PCT Github Repository][2].
2. Copy the .jar file to `$ANT_HOME/lib`.

[1]: https://github.com/Riverside-Software/pct/wiki/InstallDocumentation
[2]: https://github.com/Riverside-Software/pct/releases/latest
