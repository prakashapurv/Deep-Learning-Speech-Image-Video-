function varargout = gui_image_classify(varargin)
% GUI_IMAGE_CLASSIFY M-file for gui_image_classify.fig
%      GUI_IMAGE_CLASSIFY, by itself, creates a new GUI_IMAGE_CLASSIFY or raises the existing
%      singleton*.
%
%      H = GUI_IMAGE_CLASSIFY returns the handle to a new GUI_IMAGE_CLASSIFY or the handle to
%      the existing singleton*.
%
%      GUI_IMAGE_CLASSIFY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_IMAGE_CLASSIFY.M with the given input arguments.
%
%      GUI_IMAGE_CLASSIFY('Property','Value',...) creates a new GUI_IMAGE_CLASSIFY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_image_classify_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_image_classify_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_image_classify

% Last Modified by GUIDE v2.5 27-May-2013 16:13:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_image_classify_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_image_classify_OutputFcn, ...
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
% --- Executes just before gui_image_classify is made visible.
function gui_image_classify_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_image_classify (see VARARGIN)

% Choose default command line output for gui_image_classify
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_image_classify wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = gui_image_classify_OutputFcn(hObject, eventdata, handles) 
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
im=[ PathName  FileName]
%  msgbox(file_name);
 set(handles.edit1,'String',im);

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
end
end

% --- Executes on button press in button2.
function button2_Callback(hObject, eventdata, handles)
% hObject    handle to button2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

imvalue=get(handles.edit1,'String')
testoutputimage 
% set(hObject,'String','CATEGORIZE VIDEO');

end

% --- Executes on button press in button3.
function button3_Callback(hObject, eventdata, handles)
% hObject    handle to button3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Visible','off');
gui_f
end

