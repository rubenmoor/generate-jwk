let 
    config = {
      packageOverrides = pkgs: rec {
        haskellPackages = pkgs.haskellPackages.override {
          overrides = haskellPackagesNew: haskellPackagesOld: rec {
            generate-jwk = haskellPackagesNew.callPackage ./. {};
          };
        };
      };
    };
    pkgs = import <nixpkgs> { inherit config; };
in  pkgs.haskellPackages.generate-jwk.env
