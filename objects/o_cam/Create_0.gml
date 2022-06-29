#region Camera System 1

//Configurações da câmera

//Settando alvo
/*target_ = o_player;*/

//Settando altura da câmera
/*width_ = camera_get_view_width(view_camera[0]);*/

//Settando largura da câmera
/*height_ = camera_get_view_height(view_camera[0]);*/

#endregion

//Camera System 2

cam = view_camera[0];
follow = o_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
x_to = xstart;
y_to = ystart;