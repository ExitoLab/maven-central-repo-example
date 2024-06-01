@ECHO OFF
@REM -----------------------------------------------------------------------------
@REM Licensed to the Apache Software Foundation (ASF) under one or more
@REM contributor license agreements.  See the NOTICE file distributed with
@REM this work for additional information regarding copyright ownership.
@REM The ASF licenses this file to You under the Apache License, Version 2.0
@REM (the "License"); you may not use this file except in compliance with
@REM the License.  You may obtain a copy of the License at
@REM
@REM     http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing, software
@REM distributed under the License is distributed on an "AS IS" BASIS,
@REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM See the License for the specific language governing permissions and
@REM limitations under the License.
@REM -----------------------------------------------------------------------------
@REM -----------------------------------------------------------------------------
@REM Maven Start Up Batch script
@REM
@REM Required ENV vars:
@REM ------------------
@REM JAVA_HOME - location of a JDK home dir
@REM
@REM Optional ENV vars
@REM ------------------
@REM M2_HOME - location of maven2's installed home dir
@REM MAVEN_BATCH_ECHO - set to 'on' to enable the echoing of batch commands
@REM MAVEN_BATCH_PAUSE - set to 'on' to wait for a key press before ending
@REM MAVEN_OPTS - parameters passed to the Java VM when running Maven
@REM     e.g. to debug Maven itself, use
@REM     set MAVEN_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000
@REM MAVEN_SKIP_RC - flag to disable loading of mavenrc files
@REM -----------------------------------------------------------------------------

@REM Enable echoing and pausing by setting MAVEN_BATCH_ECHO and MAVEN_BATCH_PAUSE to 'on' in your environment.
@IF "%MAVEN_BATCH_ECHO%" == "on"  ECHO ON
@IF "%MAVEN_BATCH_ECHO%" == "on"  ECHO [INFO] MAVEN_BATCH_ECHO is set to 'on', enabling echoing of batch commands.
@IF "%MAVEN_BATCH_ECHO%" == "on"  SETLOCAL ENABLEEXTENSIONS
@IF "%MAVEN_BATCH_ECHO%" == "on"  SETLOCAL DISABLEDELAYEDEXPANSION

@REM To avoid issues with pathing with spaces on Windows, we will use the short name for the
@REM SCRIPT_DIR. This makes the script a bit more resilient to both the locations of spaces
@REM and Windows releases (at some point there will be a 3 digit number to consider).

@SETLOCAL
@REM %~dp0 is the expanded pathname of the current script under NT
@REM Drive and path are expanded with short names.
@FOR %%I IN ("%~dp0") DO @SET M2_HOME=%%~sI..

@SET M2=%M2_HOME%\bin

@SET MAVEN_CMD_LINE_ARGS=%*
@IF DEFINED MAVEN_SKIP_RC goto skipRcPost
@REM check for pre/post mavenrc files, once with legacy .mavenrc name and once with standard .mavenrc name
@IF EXIST "%USERPROFILE%\mavenrc_pre.bat" call "%USERPROFILE%\mavenrc_pre.bat"
@IF EXIST "%USERPROFILE%\.mavenrc_pre" call "%USERPROFILE%\.mavenrc_pre"
@IF EXIST "%USERPROFILE%\mavenrc.bat" call "%USERPROFILE%\mavenrc.bat"
@IF EXIST "%USERPROFILE%\.mavenrc" call "%USERPROFILE%\.mavenrc"
@IF EXIST "%USERPROFILE%\mavenrc_post.bat" call "%USERPROFILE%\mavenrc_post.bat"
@IF EXIST "%USERPROFILE%\.mavenrc_post" call "%USERPROFILE%\.mavenrc_post"
@skipRcPost:

@REM -Xverify:none was removed as it is not a recognized java option
@IF NOT "%MAVEN_OPTS%" == "" goto checkJava
@SET MAVEN_OPTS=-Xms256m -Xmx512m
@checkJava:
@REM Check for the Java invocation we need
