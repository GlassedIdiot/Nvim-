return{
 cmd = {"nil"},
  filetypes = {"nix"},
	root_dir = util.root_pattern("flake.nix",".git"),
  single_file_support = true;
  
  settings = {
  
    "nil" : {
      "diagnostics" : {
        "ignored" : ["unused_with"],
      },
      "formating" : {
          "command" : ["nixpkgs-fmt"],
      },
    },
  },

}
