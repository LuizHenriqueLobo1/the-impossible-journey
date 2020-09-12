//Sistema da câmera

//Se não houver instância no alvo saia
if not instance_exists(target_) exit;

//Define a instância de (x)
x = lerp(x, target_.x, 0.1);

//Define a instância de (y)
y = lerp(y, target_.y-height_/4, 0.1);

//Settando posição da câmera
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);