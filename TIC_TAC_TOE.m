function varargout = TIC_TAC_TOE(varargin)
% TIC_TAC_TOE MATLAB code for TIC_TAC_TOE.fig
%      TIC_TAC_TOE, by itself, creates a new TIC_TAC_TOE or raises the existing
%      singleton*.
%
%      H = TIC_TAC_TOE returns the handle to a new TIC_TAC_TOE or the handle to
%      the existing singleton*.
%
%      TIC_TAC_TOE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIC_TAC_TOE.M with the given input arguments.
%
%      TIC_TAC_TOE('Property','Value',...) creates a new TIC_TAC_TOE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TIC_TAC_TOE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TIC_TAC_TOE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TIC_TAC_TOE

% Last Modified by GUIDE v2.5 20-Aug-2022 23:21:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TIC_TAC_TOE_OpeningFcn, ...
                   'gui_OutputFcn',  @TIC_TAC_TOE_OutputFcn, ...
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


% --- Executes just before TIC_TAC_TOE is made visible.
function TIC_TAC_TOE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TIC_TAC_TOE (see VARARGIN)

% Creating an array to track the inputs
handles.X = nan(3);
handles.counter = 0;

% Choose default command line output for TIC_TAC_TOE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TIC_TAC_TOE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TIC_TAC_TOE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in aa.
function aa_Callback(hObject, eventdata, handles)
% hObject    handle to aa (see GCBO)
if handles.counter == 0 && isnan(handles.X(1,1))
    handles.X(1,1) = 0;
    handles.counter = 1;
    set(handles.aa,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(1,1))
    handles.X(1,1) = 1;
    handles.counter = 0;
    set(handles.aa,'String','X')
    guidata(hObject, handles)
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ab.
function ab_Callback(hObject, eventdata, handles)
% hObject    handle to ab (see GCBO)
if handles.counter == 0 && isnan(handles.X(1,2))
    handles.X(1,2) = 0;
    handles.counter = 1;
    set(handles.ab,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(1,2))
    handles.X(1,2) = 1;
    handles.counter = 0;
    set(handles.ab,'String','X')
    guidata(hObject, handles)
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ac.
function ac_Callback(hObject, eventdata, handles)
% hObject    handle to ac (see GCBO)
if handles.counter == 0 && isnan(handles.X(1,3))
    handles.X(1,3) = 0;
    handles.counter = 1;
    set(handles.ac,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(1,3))
    handles.X(1,3) = 1;
    handles.counter = 0;
    set(handles.ac,'String','X')
    guidata(hObject, handles)
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ba.
function ba_Callback(hObject, eventdata, handles)
% hObject    handle to ba (see GCBO)
if handles.counter == 0 && isnan(handles.X(2,1))
    handles.X(2,1) = 0;
    handles.counter = 1;
    set(handles.ba,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(2,1))
    handles.X(2,1) = 1;
    handles.counter = 0;
    set(handles.ba,'String','X')
    guidata(hObject, handles)
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bb.
function bb_Callback(hObject, eventdata, handles)
% hObject    handle to bb (see GCBO)
if handles.counter == 0 && isnan(handles.X(2,2))
    handles.X(2,2) = 0;
    handles.counter = 1;
    set(handles.bb,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(2,2))
    handles.X(2,2) = 1;
    handles.counter = 0;
    set(handles.bb,'String','X')
    guidata(hObject, handles)
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bc.
function bc_Callback(hObject, eventdata, handles)
% hObject    handle to bc (see GCBO)
if handles.counter == 0 && isnan(handles.X(2,3))
    handles.X(2,3) = 0;
    handles.counter = 1;
    set(handles.bc,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(2,3))
    handles.X(2,3) = 1;
    handles.counter = 0;
    set(handles.bc,'String','X')
    guidata(hObject, handles)
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ca.
function ca_Callback(hObject, eventdata, handles)
% hObject    handle to ca (see GCBO)
if handles.counter == 0 && isnan(handles.X(3,1))
    handles.X(3,1) = 0;
    handles.counter = 1;
    set(handles.ca,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(3,1))
    handles.X(3,1) = 1;
    handles.counter = 0;
    set(handles.ca,'String','X')
    guidata(hObject, handles)
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cb.
function cb_Callback(hObject, eventdata, handles)
% hObject    handle to cb (see GCBO)
if handles.counter == 0 && isnan(handles.X(3,2))
    handles.X(3,2) = 0;
    handles.counter = 1;
    set(handles.cb,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(3,2))
    handles.X(3,2) = 1;
    handles.counter = 0;
    set(handles.cb,'String','X')
    guidata(hObject, handles)
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cc.
function cc_Callback(hObject, eventdata, handles)
% hObject    handle to cc (see GCBO)
if handles.counter == 0 && isnan(handles.X(3,3))
    handles.X(3,3) = 0;
    handles.counter = 1;
    set(handles.cc,'String','O')
    guidata(hObject, handles)
elseif handles.counter == 1 && isnan(handles.X(3,3))
    handles.X(3,3) = 1;
    handles.counter = 0;
    set(handles.cc,'String','X')
    guidata(hObject, handles)
end

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in clearbtn.
function clearbtn_Callback(hObject, eventdata, handles)
% hObject    handle to clearbtn (see GCBO)
handles.X = nan(3);
handles.counter = 0;
set(handles.aa,'String','')
set(handles.ab,'String','')
set(handles.ac,'String','')
set(handles.ba,'String','')
set(handles.bb,'String','')
set(handles.bc,'String','')
set(handles.ca,'String','')
set(handles.cb,'String','')
set(handles.cc,'String','')
guidata(hObject, handles)

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
