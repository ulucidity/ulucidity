%########################################################################
%# Copyright (c) 1988-2022 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: Application-header-css.t
%#
%# Author: $author$
%#   Date: 9/9/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(%
%%else-then(%include(%Include_path%/../t/Application.t)%,%(Application)%)%%
%)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(header)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-part-css.t)%%
%
/*
** header
** ...
*/
.header {
    width: 100%%;
    height: 42px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white; 
    border-spacing: 0px 0px;
    position: relative;
    float: top;
    z-index: 1;
}
.header-button {
    padding: 0px;
}

/*
** parent
** ...
*/
.parent {
     width: 64px;
     height: 100%%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: white; 
     border-spacing: 0px 0px;
     text-align: center;
     float: left;
}
.parent-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: white; 
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.parent-button:hover, .parent-button:focus {
     outline: none;
}
.parent-button:hover .parent-dot, .parent-button:focus .parent-dot {
     background-color: lightgray; 
}
.parent-dots {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: white; 
    border-spacing: 4px 20px;
}
.parent-dot {
     width: 8px;
     height: 8px;
     padding: 0px;
     border-radius: 4px;
     background-color: gray; 
}
/*
** ...
** parent
*/

/*
** popdown
** ...
*/
.popdown {
     width: 64px;
     height: 100%%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: white; 
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.popdown-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: white; 
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.popdown-button:hover, .popdown-button:focus {
     outline: none;
}
.popdown-button:hover .popdown-dot, .popdown-button:focus .popdown-dot {
     background-color: lightgray; 
}
.popdown-dots {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: white; 
    border-spacing: 4px 4px;
}
.popdown-dot {
     width: 7px;
     height: 7px;
     padding: 0px;
     border-radius: 4px;
     background-color: gray; 
}
/*
** ...
** popdown
*/

/*
** dropdown
** ...
*/
.dropdown {
     width: 64px;
     height: 100%%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: white; 
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.dropdown-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: white; 
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.dropdown-button:hover, .dropdown-button:focus {
     outline: none;
}
.dropdown-button:hover .dropdown-bar, .dropdown-button:focus .dropdown-bar {
     background-color: lightgray; 
}
.dropdown-bars {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: white; 
    border-spacing: 4px 4px;
}
.dropdown-bar {
     width: 32px;
     height: 6px;
     padding: 0px;
     border-radius: 3px;
     background-color: gray; 
}
.dropdown-content {
     padding: 0px;
     border-spacing: 0px 0px;
     border-style: solid;
     border-color: gray; 
     border-width: 1px 3px 3px 1px;
     border-radius: 5px 5px 5px 5px;
     background-color: lightgray; 
     position: absolute;
     min-width: 160px;
     right: 0;
     z-index: 2;
     display: none;
 }
.dropdown-content a {
     color: black; 
     padding: 12px 16px;
     border-spacing: 0px 0px;
     text-decoration: none;
     font-size: 18;  
     display: block;
}
.dropdown-content a:hover {
     color: black; 
     text-decoration: underline;
}
/*
** ...
** dropdown
*/

/*
** ...
** header
*/
%
%)%)%