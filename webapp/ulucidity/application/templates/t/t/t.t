%########################################################################
%## Copyright (c) 1988-2022 $organization$
%## 
%## This software is provided by the author and contributors ``as is'' 
%## and any express or implied warranties, including, but not limited to, 
%## the implied warranties of merchantability and fitness for a particular 
%## purpose are disclaimed. In no event shall the author or contributors 
%## be liable for any direct, indirect, incidental, special, exemplary, 
%## or consequential damages (including, but not limited to, procurement 
%## of substitute goods or services; loss of use, data, or profits; or 
%## business interruption) however caused and on any theory of liability, 
%## whether in contract, strict liability, or tort (including negligence 
%## or otherwise) arising in any way out of the use of this software, 
%## even if advised of the possibility of such damage.
%## 
%##   File: t.t
%## 
%## Author: $author$
%##   Date: 11/4/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_include,%(%else-then(%is_include%,%(%is_Include%)%)%)%,%
%include,%(%else-then(%if-no(%is_include%,,%(%include%)%)%,%(%if-no(%is_include%,,%(file-t)%)%)%)%)%,%
%Include,%(%else-then(%if-no(%is_include%,,%(%Include%)%)%,%(%if-no(%is_include%,,%(%include%)%)%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_include%,%(%tolower(%Include%)%)%)%)%,%
%is_include_base,%(%else-then(%is_include_base%,%(%is_Include_base%)%)%)%,%
%include_base,%(%else-then(%if-no(%is_include_base%,,%(%include_base%)%)%,%(%if-no(%is_include_base%,,%(%else-then(%filebase(%Include%)%,%Include%)%)%)%)%)%)%,%
%Include_base,%(%else-then(%if-no(%is_include_base%,,%(%Include_base%)%)%,%(%if-no(%is_include_base%,,%(%include_base%)%)%)%)%)%,%
%INCLUDE_BASE,%(%else-then(%INCLUDE_BASE%,%(%toupper(%Include_base%)%)%)%)%,%
%include_base,%(%else-then(%_include_base%,%(%tolower(%Include_base%)%)%)%)%,%
%is_include_extension,%(%else-then(%is_include_extension%,%(%is_Include_extension%)%)%)%,%
%include_extension,%(%else-then(%if-no(%is_include_extension%,,%(%include_extension%)%)%,%(%if-no(%is_include_extension%,,%(%else-then(%fileextension(%Include%)%,t)%)%)%)%)%)%,%
%Include_extension,%(%else-then(%if-no(%is_include_extension%,,%(%Include_extension%)%)%,%(%if-no(%is_include_extension%,,%(%include_extension%)%)%)%)%)%,%
%INCLUDE_EXTENSION,%(%else-then(%INCLUDE_EXTENSION%,%(%toupper(%Include_extension%)%)%)%)%,%
%include_extension,%(%else-then(%_include_extension%,%(%tolower(%Include_extension%)%)%)%)%,%
%is_includebaseincludeextension,%(%else-then(%is_includebaseincludeextension%,%(%is_IncludeBaseIncludeExtension%)%)%)%,%
%includebaseincludeextension,%(%else-then(%if-no(%is_includebaseincludeextension%,,%(%includebaseincludeextension%)%)%,%(%if-no(%is_includebaseincludeextension%,,%(%if-then(%Include_base%,%(%then-if(%Include_extension%,.)%)%)%)%)%)%)%)%,%
%IncludeBaseIncludeExtension,%(%else-then(%if-no(%is_includebaseincludeextension%,,%(%IncludeBaseIncludeExtension%)%)%,%(%if-no(%is_includebaseincludeextension%,,%(%includebaseincludeextension%)%)%)%)%)%,%
%INCLUDEBASEINCLUDEEXTENSION,%(%else-then(%INCLUDEBASEINCLUDEEXTENSION%,%(%toupper(%IncludeBaseIncludeExtension%)%)%)%)%,%
%includebaseincludeextension,%(%else-then(%_includebaseincludeextension%,%(%tolower(%IncludeBaseIncludeExtension%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,t)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-t.t)%%
%%%with%(()%%%
%if(%if-no(%is_Include%,,%(yes)%)%,%(%
%%with(Parameters,%(Include_path=%%filepath%(()%%%input%%%())%%%)%,%
%%(%include(%include_path%/parameters-t.t)%)%)%%
%)%)%%include(%include_path%/parameters-t.t)%%%%%%(()%%%
%if(%if-no(%is_Include%,,%(%Include%)%)%,%(%
%%parse(%Include%,;,,,,%(%%%%include%(()%%%Include_path%%%then-if(%IncludeBaseIncludeExtension%,%(/)%)%%())%%%%%
)%,Include)%%
%)%)%%
%%%%())%%%%())%%%%
%)%)%