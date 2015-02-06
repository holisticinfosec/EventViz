# EventViz
EventViz Windows event log viewer for Sysmon logs. Will broaden log scope to other event logs as further development continues.

1) Use of EventViz currently assumes you’ve got a version of R installed, as well as RStudio. At an RStudio console prompt be sure to run install.packages("shiny") as EventViz is a Shiny app that requires the Shiny package. Create a directory where you’d plan to store R scripts, and create an apps directory therein, and an EventViz directory in the apps directory. Mine is C:\coding\R\apps\EventViz as an example. Copy server.R and ui.R, as well as the example CSV file or your copy of a Sysmon log, to the EventViz directory. Save Sysmon event logs as CSV via the Windows Event View or with Log Parser, copy them to the EventViz app directory on your system, and modify the ui.R and server.R scripts to the correct file name for the CSV file.  

2) Open server.R and ui.R in Rstudio and click Run App

3) Filter and review the results once rendered using the drop-down menus at the top of the EventViz UI or the text search filters at the borrom of the EventViz UI.

Refer to [toolsmith: Sysmon 2.0 & EventViz](http://holisticinfosec.blogspot.com/2015/02/toolsmith-sysmon-20-eventviz.html) for details and examples.

This is an unwarranted work in progress. Feedback and contributions welcome.

EventViz is released under the MIT License (MIT)
Copyright (c) 2015 Russ McRee, HolisticInfoSec

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

