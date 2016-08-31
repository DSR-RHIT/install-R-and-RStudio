### create an .Renviron file

These steps allow you to install future versions of R without having to reinstall all the packages you use.

Create a new directory at the top level named "R". In that directory create a new folder named "library", for example,

-   Windows: `C:/R/library`
-   Linux: `~/R/library`

In RStudio, open a new text file, *File menu &gt; New File &gt; Text File*. Write one line of text in the file,

-   Windows: type `R_LIBS_USER="C:/R/library"`
-   Linux: type`R_LIBS_USER="~/R/library"`
-   Save As... using the filename `.Renviron` and save to your project directory

### for new RStudio projects

-   Whenever you create a new RStudio Project, paste a copy of the .Renviron file in the project root directory.

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
