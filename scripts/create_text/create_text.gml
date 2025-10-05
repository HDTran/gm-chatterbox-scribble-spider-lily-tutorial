function create_text(_node, _file) {
    with instance_create_depth(0, 0, 0, oText) {
        chatterbox = ChatterboxCreate(_file);
        
        // Initialise Chatterbox by jumping to a node
        ChatterboxJump(chatterbox, _node);
        
        // Get Content from Chatterbox
        refresh_text_elements();
    }
}