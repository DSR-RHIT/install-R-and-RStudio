### create top level package library

At the top level of your drive, create a new directory named "R". In that directory create a new folder named "library", for example,

-   Windows: `C:/R/library`
-   Linux: `~/R/library`

The purpose of creating this directory is to provide a home for R packages independent of the base R installation. Then when you update the R version you are using, you don't have to reinstall every package, saving a lot of time.

### the *.Renviron* file

The `.Renviron` file is a text file that directs R packages to be installed in the *R/library* directory you just created.

To create the file, with RStudio open, create a new text file,

*File menu &gt; New File &gt; Text File*.

Save the file to your project directory using the filename *.Renviron*

In this file, write one line of text,

-   Windows: `R_LIBS_USER="C:/R/library"`

-   Linux: `R_LIBS_USER="~/R/library"`

Whenever you create a new RStudio Project, paste a copy of the *.Renviron* file in the project root directory.

### test it

-   Now let's see if the library path you made works. The RStudio interface is divided into 4 window panes. In the lower right pane, select *Packages &gt; Install*

-   In the dialog box that appears, the Install to Library strip should show the path to the *library* directory you created earlier, for example, Windows should show `C:/R/library [Default]` and Linux should show `~/R/library [Default]`.

-   In the Packages entry box, type `plyr` and click Install. If all goes well, you'll see something like this in the lower left pane (the R Console).

``` r
Installing package into "C:/R/library" (as "lib" is unspecified)
trying URL "http://ftp.ussg.iu.edu/CRAN/bin/windows/contrib/3.1/plyr_1.8.1.zip"
Content type "application/zip" length 1149242 bytes (1.1 Mb)
opened URL
downloaded 1.1 Mb

package "plyr" successfully unpacked and MD5 sums checked

>
```

### next, setup an R Project

If you haven't setup your course folder as an R Project, please do so now.

-   [set up an R Project](setup_R_project.md)

------------------------------------------------------------------------

[main page](../README.md)
