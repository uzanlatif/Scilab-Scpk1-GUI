// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[403,39],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.pb_submit=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.3205128,0.170068,0.3397436,0.1269841],'Relief','default','SliderStep',[0.01,0.1],'String','Cek!','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_submit','Callback','pb_submit_callback(handles)')
handles.Text_Input=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.334935897435897,0.79591837845805,0.2740385,0.1111111],'Relief','default','SliderStep',[0.01,0.1],'String','Program Tahun Kabisat','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Text_Input','Callback','')
handles.editEq=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.33974358974359,0.394557823129253,0.264423076923077,0.120181405895691],'Relief','default','SliderStep',[0.01,0.1],'String','InputTahun','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','editEq','Callback','')


f.visible = "on";


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

function pb_submit_callback(handles)
    //mengambil inputan user
    str_eq= handles.editEq.string;
    eq=str_eq; 
    a= strtod(eq); //ubah string menjadi decimal
     
     //fungsi kabisat
    if (modulo(a,400)==0) then
        handles.editEq.string='kabisat';
    elseif (modulo(a,100)==0) then
        handles.editEq.string='bukan kabisat';
    elseif (modulo(a,4)==0) then
        handles.editEq.string='kabisat';
    else
        handles.editEq.string='bukan kabisat';
    end
    
endfunction


