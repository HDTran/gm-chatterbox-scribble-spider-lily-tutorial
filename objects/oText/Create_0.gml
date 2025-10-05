// Load your file
ChatterboxLoadFromFile("chatterboxtut.yarn");

// Create Chatterbox
chatterbox = ChatterboxCreate("chatterboxtut.yarn");

// Initialise Chatterbox by jumping to a node ("Start")
ChatterboxJump(chatterbox, "Start");

// Get Content from Chatterbox
refresh_text_elements();

current_text = undefined;
hovering = -1;
activeRegion = 0;