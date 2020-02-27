function varargout = grafik(varargin)
% GRAFIK MATLAB code for grafik.fig
%      GRAFIK, by itself, creates a new GRAFIK or raises the existing
%      singleton*.
%
%      H = GRAFIK returns the handle to a new GRAFIK or the handle to
%      the existing singleton*.
%
%      GRAFIK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFIK.M with the given input arguments.
%
%      GRAFIK('Property','Value',...) creates a new GRAFIK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before grafik_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to grafik_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help grafik

% Last Modified by GUIDE v2.5 27-Feb-2020 12:14:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @grafik_OpeningFcn, ...
                   'gui_OutputFcn',  @grafik_OutputFcn, ...
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


% --- Executes just before grafik is made visible.
function grafik_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to grafik (see VARARGIN)

% Choose default command line output for grafik
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes grafik wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = grafik_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function awal_Callback(hObject, eventdata, handles)
% hObject    handle to awal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of awal as text
%        str2double(get(hObject,'String')) returns contents of awal as a double


% --- Executes during object creation, after setting all properties.
function awal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to awal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function akhir_Callback(hObject, eventdata, handles)
% hObject    handle to akhir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of akhir as text
%        str2double(get(hObject,'String')) returns contents of akhir as a double


% --- Executes during object creation, after setting all properties.
function akhir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to akhir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hasil.
function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = get(handles.awal,'string');
x2 = get(handles.akhir,'string');
x3 = get(handles.jarak,'string');
awal = str2num(x1);
akhir = str2num(x2);
jarak = str2num(x3);
deret = awal:jarak:akhir;
y = deret.^3+2*deret.^2-deret+1;
plot(handles.grafik,deret,y);
grid on



function jarak_Callback(hObject, eventdata, handles)
% hObject    handle to jarak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jarak as text
%        str2double(get(hObject,'String')) returns contents of jarak as a double


% --- Executes during object creation, after setting all properties.
function jarak_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jarak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
