if (!instance_exists(oText)) {
    if (InputPressed(INPUT_VERB.CHOICE1)) {
        create_text("Start", "chatterboxtut.yarn");
    } 
    
    if (InputPressed(INPUT_VERB.CHOICE2)) {
        create_text("Node2", "chatterboxtut.yarn");
    }
}
if (InputPressed(INPUT_VERB.PAUSE)) {
    game_end();
}