var _x = 100;
var _y = 100;
var _opty = 150;

if (ChatterboxIsStopped(chatterbox)) { 
    instance_destroy(self);
} else { 
    draw_text(_x, _y, text);
    
    if (ChatterboxGetOptionCount(chatterbox)) > 0 {
        for (var _i = 0; _i < ChatterboxGetOptionCount(chatterbox); _i++) {
            var _option = string(_i+1) + ": " + ChatterboxGetOption(chatterbox, _i);
            
            //_i starts at 0, but we want the choices to be numbered 1–2–3 not 0–1–2, so we +1 to it when we make our string to draw. 
            draw_text(_x, _opty, _option);
            _opty += 30;
        }
    }
}