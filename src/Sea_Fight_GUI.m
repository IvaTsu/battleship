function varargout = Sea_Fight_GUI(varargin)
% Copyright Ivan Tsud
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sea_Fight_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Sea_Fight_GUI_OutputFcn, ...
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

function Sea_Fight_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Sea_Fight_GUI_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
set(gcf, 'Resize', 'on')

function Play_Callback(hObject, eventdata, handles)
k = gcf;
Sea_Fight_GUI_choose_how_to_play;
close(k);

function Close_Callback(hObject, eventdata, handles)
close;

function Help_Callback(hObject, eventdata, handles)
k = gcf;
Help_Sea;
