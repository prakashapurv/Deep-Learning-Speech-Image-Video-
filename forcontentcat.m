function varargout = forcontentcat(varargin)
% FORCONTENTCAT M-file for forcontentcat.fig
%      FORCONTENTCAT, by itself, creates a new FORCONTENTCAT or raises the existing
%      singleton*.
%
%      H = FORCONTENTCAT returns the handle to a new FORCONTENTCAT or the handle to
%      the existing singleton*.
%
%      FORCONTENTCAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORCONTENTCAT.M with the given input arguments.
%
%      FORCONTENTCAT('Property','Value',...) creates a new FORCONTENTCAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before forcontentcat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to forcontentcat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help forcontentcat

% Last Modified by GUIDE v2.5 27-May-2013 15:23:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @forcontentcat_OpeningFcn, ...
                   'gui_OutputFcn',  @forcontentcat_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

end

% --- Executes just before forcontentcat is made visible.
function forcontentcat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to forcontentcat (see VARARGIN)

% Choose default command line output for forcontentcat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes forcontentcat wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end


% --- Outputs from this function are returned to the command line.
function varargout = forcontentcat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end


% --- Executes on button press in Browse.
function Browse_Callback(hObject, eventdata, handles)
% hObject    handle to Browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

framemov4;
end

