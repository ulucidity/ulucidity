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
%#   File: Application-body-logo-css.t
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
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(body-logo)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-part-css.t)%%
%
/*
** .body-logo
** ...
*/
.body-logo {
    width: 100%%;
    height: 100%%;
    margin: auto;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border: 0px;
    border-style: solid;
    border-color: white; 
    background-color: black; 
    position: absolute;
    z-index: 0;
}
.body-logo-icon {
    width: 400px;
    height: 400px;
    margin: auto;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border: 0px;
    border-style: solid;
    border-color: white; 
    background-color: black;  
    position: relative;
    cursor: pointer;
}
.body-logo-icon-image { 
    width: 400px;
    height: 400px;
    border: 0px;
    border-style: solid;
    border-color: white;
    background-image: url('../images/png/%Application%-logo.png'); 
    background-repeat: no-repeat;
    background-position: center;
    background-size: 400px 400px;
    border-radius: 70px;
    vertical-align: bottom;
}
.body-logo-label {
    width: 100%%;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border: 0px;
    border-style: solid;
    border-color: white; 
}
.body-logo-label-text {
    opacity: 0;
    color: lightgray; 
    background-color: black; 
    transition: .5s ease;
    font-size: 40px;
    font-family: Arial;
    text-align: center;
 }
.body-logo-icon:hover .body-logo-label-text {
    opacity: .75;
}
/*
** ...
** .body-logo
*/
%
%)%)%