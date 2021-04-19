let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  nixops-with-plugins = (import sources.nixops-with-plugins { }); 
in
  pkgs.mkShell {
    buildInputs = [
      nixops-with-plugins    
    ];
  }
