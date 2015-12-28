
function varargout = gui_f(varargin)
% GUI_F M-file for gui_f.fig
%      GUI_F, by itself, creates a new GUI_F or raises the existing
%      singleton*.
%
%      H = GUI_F returns the handle to a new GUI_F or the handle to
%      the existing singleton*.
%
%      GUI_F('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_F.M with the given input arguments.
%
%      GUI_F('Property','Value',...) creates a new GUI_F or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_f_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_f_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_f

% Last Modified by GUIDE v2.5 28-May-2013 02:39:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_f_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_f_OutputFcn, ...
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

% --- Executes just before gui_f is made visible.
function gui_f_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_f (see VARARGIN)

% Choose default command line output for gui_f
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_f wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = gui_f_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end
% --- Executes on button press in button4.
function button4_Callback(hObject, eventdata, handles)
% hObject    handle to button4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Visible','off');
gui_test;
end

% --- Executes on button press in button2.
function button2_Callback(hObject, eventdata, handles)
% hObject    handle to button2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Visible','off');
gui_summaize
end
% --- Executes on button press in button3.
function button3_Callback(hObject, eventdata, handles)
% hObject    handle to button3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Visible','off');
gui_search;
end

% --- Executes on button press in button1.
function button1_Callback(hObject, eventdata, handles)
% hObject    handle to button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Visible','off');
gui_image_classify;
end

