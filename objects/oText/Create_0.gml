//Load your file.
ChatterboxLoadFromFile("chatterboxtut.yarn");

// Create Chatterbox
chatterbox = ChatterboxCreate("chatterboxtut.yarn");

// Initialise Chatterbox by jumping to a node ("Start")
ChatterboxJump(chatterbox, "Start");

// Get Content from Chatterbox
text = ChatterboxGetContent(chatterbox, 0);
nodeTitle = ChatterboxGetCurrent(chatterbox);