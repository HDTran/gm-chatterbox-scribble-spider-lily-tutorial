if (ChatterboxIsWaiting(chatterbox)) {
    if (InputPressed(INPUT_VERB.ACCEPT)) {
        ChatterboxContinue(chatterbox);
        refresh_text_elements();
    }
} else {
    // If Chatterbox is presenting the user with some options, check for that
     if (ChatterboxGetOptionCount(chatterbox)) {
        var _select = undefined; // What the user selected.
         
        // You'll need more of these if you have more than three options, of course!
        if (InputPressed(INPUT_VERB.CHOICE1) || (InputPressed(INPUT_VERB.ACCEPT) && hovering = "choice1")) {
            _select = 0;
        }
        if (InputPressed(INPUT_VERB.CHOICE2) || (InputPressed(INPUT_VERB.ACCEPT) && hovering = "choice2")) {
            _select = 1;
        }      
        if (InputPressed(INPUT_VERB.CHOICE3) || (InputPressed(INPUT_VERB.ACCEPT) && hovering = "choice3")) {
            _select = 2;
        }
     
        // If we've pressed a button, select that option
        // There is almost certainly a more elegant way to do this but this tutorial is so long already...
        if (_select != undefined) {
            ChatterboxSelect(chatterbox, _select);
            refresh_text_elements();
        } 
   }
}