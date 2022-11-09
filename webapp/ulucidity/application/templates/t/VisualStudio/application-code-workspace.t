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
%##   File: application-code-workspace.t
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
%is_workspace,%(%else-then(%is_workspace%,%(%is_Workspace%)%)%)%,%
%workspace,%(%else-then(%if-no(%is_workspace%,,%(%workspace%)%)%,%(%if-no(%is_workspace%,,%(%else-then(%filebase(%File%)%,%(Workspace)%)%)%)%)%)%)%,%
%Workspace,%(%else-then(%if-no(%is_workspace%,,%(%Workspace%)%)%,%(%if-no(%is_workspace%,,%(%workspace%)%)%)%)%)%,%
%WORKSPACE,%(%else-then(%WORKSPACE%,%(%toupper(%Workspace%)%)%)%)%,%
%workspace,%(%else-then(%_workspace%,%(%tolower(%Workspace%)%)%)%)%,%
%is_path,%(%else-then(%is_path%,%(%is_Path%)%)%)%,%
%path,%(%else-then(%if-no(%is_path%,,%(%path%)%)%,%(%if-no(%is_path%,,%(../../../../..)%)%)%)%)%,%
%Path,%(%else-then(%if-no(%is_path%,,%(%Path%)%)%,%(%if-no(%is_path%,,%(%path%)%)%)%)%)%,%
%PATH,%(%else-then(%PATH%,%(%toupper(%Path%)%)%)%)%,%
%path,%(%else-then(%_path%,%(%tolower(%Path%)%)%)%)%,%
%is_folders,%(%else-then(%is_folders%,%(%is_Folders%)%)%)%,%
%folders,%(%else-then(%if-no(%is_folders%,,%(%folders%)%)%,%(%if-no(%is_folders%,,%(%Workspace%)%)%)%)%)%,%
%Folders,%(%else-then(%if-no(%is_folders%,,%(%Folders%)%)%,%(%if-no(%is_folders%,,%(%folders%)%)%)%)%)%,%
%FOLDERS,%(%else-then(%FOLDERS%,%(%toupper(%Folders%)%)%)%)%,%
%folders,%(%else-then(%_folders%,%(%tolower(%Folders%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(%
%)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_workspace,%(%else-then(%is_workspace%,%(%is_Workspace%)%)%)%,%
%workspace,%(%else-then(%if-no(%is_workspace%,,%(%workspace%)%)%,%(%if-no(%is_workspace%,,%(%else-then(%filebase(%File%)%,%
%%else-then(%Framework%,Workspace)%%
%)%)%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(%
%application%
%)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%(%
%%else-then(%Workspace%,%(%if-then(%then-if(%Application%,%(%if-then(%Framework%,%(-)%)%)%)%,%(-)%)%code-workspace)%)%%
%)%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-code-workspace.t)%%
%{
    "folders": [%parse(%Folders%,;,,%(,)%,,%(
        {
            "path": "%if-then(%Path%,%(/)%)%%Folder%"
        })%,Folder)%
    ]
}
%
%)%)%