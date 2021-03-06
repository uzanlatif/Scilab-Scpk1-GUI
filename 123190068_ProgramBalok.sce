// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[423,148],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.pb_push=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.237179487179487,0.267573696145125,0.487179487179487,0.149659863945578],'Relief','default','SliderStep',[0.01,0.1],'String','Generate','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_push','Callback','pb_push_callback(handles)')
handles.txt_hasilLuas=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.193910256410256,0.507936507936508,0.225961538461538,0.111111111111111],'Relief','default','SliderStep',[0.01,0.1],'String','Hasil Luas','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','txt_hasilLuas','Callback','')
handles.txt_hasilVolume=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.463141025641026,0.505668934240363,0.288461538461538,0.106575963718821],'Relief','default','SliderStep',[0.01,0.1],'String','Hasil Volume','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','txt_hasilVolume','Callback','')
handles.txt_judul=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.147435897435897,0.83312925170068,0.709935897435897,0.142857142857143],'Relief','default','SliderStep',[0.01,0.1],'String','Hitung Luas Volume Balok','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','txt_judul','Callback','')
handles.cb_alas=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.192307692307692,0.72108843537415,0.155448717948718,0.068027210884354],'Relief','default','SliderStep',[0.01,0.1],'String','alas','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','cb_alas','Callback','')
handles.cb_lebar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.366987179487179,0.714285714285714,0.206730769230769,0.068027210884354],'Relief','default','SliderStep',[0.01,0.1],'String','lebar','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','cb_lebar','Callback','')
handles.cb_tinggi=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.613782051282051,0.724285714285714,0.203525641025641,0.056689342403628],'Relief','default','SliderStep',[0.01,0.1],'String','tinggi','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','cb_tinggi','Callback','')


f.visible = "on";


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

function pb_push_callback(handles)
    //mengambil data inputan user string menjadi decimal
    str_t=handles.cb_tinggi.string;
    t=strtod (str_t);
    str_a=handles.cb_alas.string;
    a=strtod (str_a);
    str_l=handles.cb_lebar.string;
    l=strtod(str_l);
    
    vlm=t*a*l;                  //hitung volume
    lp=((t*a)+(a*l)+(l*t))*2;   //hitung luas permukaan
    
    handles.txt_hasilLuas.string=string(lp); //update GUI
    handles.txt_hasilVolume.string=string(vlm); //update GUI

endfunction


