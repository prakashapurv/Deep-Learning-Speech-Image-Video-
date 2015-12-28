function varargout = gui_test(varargin)
% GUI_TEST M-file for gui_test.fig
%      GUI_TEST, by itself, creates a new GUI_TEST or raises the existing
%      singleton*.
%
%      H = GUI_TEST returns the handle to a new GUI_TEST or the handle to
%      the existing singleton*.
%
%      GUI_TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_TEST.M with the given input arguments.
%
%      GUI_TEST('Property','Value',...) creates a new GUI_TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_test

% Last Modified by GUIDE v2.5 27-May-2013 15:49:01

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_test_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_test_OutputFcn, ...
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

% --- Executes just before gui_test is made visible.
function gui_test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_test (see VARARGIN)

% Choose default command line output for gui_test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_test wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end


% --- Outputs from this function are returned to the command line.
function varargout = gui_test_OutputFcn(hObject, eventdata, handles) 
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

 [FileName,PathName,FilterIndex] = uigetfile;
 file_name=[ PathName  FileName]
%  msgbox(file_name);
 set(handles.edit1,'String',file_name);


end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
end

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    
   msgbox(file_name)
end


end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file_name=get(handles.edit1,'String')
set(hObject,'String','Processing....');
framemov4;
set(hObject,'String','CATEGORIZE THIS VIDEO');
msgbox('VIDEO HAS BEEN CATEGORIZED: SEE THE FOLDER');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Visible','off');
gui_f
end

