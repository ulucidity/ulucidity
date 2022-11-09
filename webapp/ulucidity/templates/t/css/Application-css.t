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
%#   File: Application-css.t
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
%%(%
%%include(%Include_path%/Application-file-css.t)%%
%
/*
** body
** ...
*/
body { 
    font-family: Arial;  
}
.body {
    width: 100%%;
    height: 100%%;
    margin: 0px;
    font-family: Arial; 
    color: lightgray; 
    background-color: black; 
    background-image: url('../images/jpeg/%Application%-background.jpg'); 
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100%% 100%%;
}
/*
** ...
** body
*/

/*
** form 
** ...
*/
form {
    border-style: solid;
    border-color: black; 
    border-width: 1px 0px 1px 0px; 
    position: relative;
    z-index: 1;
}
form pre {
    margin: 0;
}
form table td { 
    white-space: nowrap; 
    padding: 0px 10px 0px 0px; 
}
.form { 
    color: black; 
    background-color: lightgray; 
}
/*
** ...
** form
*/

/*
** global
** ...
*/
a { 
    color: black; 
    font-weight: bolder; 
    text-decoration: none; 
}
a:hover { 
    color: black; 
    font-weight: bolder; 
    text-decoration: underline; 
}
.table { 
    white-space: nowrap; 
}
/*
** ...
** global
*/
%
%)%)%