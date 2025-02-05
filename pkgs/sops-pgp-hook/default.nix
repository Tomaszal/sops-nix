{ stdenv, makeSetupHook, gnupg, sops, nix }:

(makeSetupHook {
  name = "sops-pgp-hook";
  substitutions = {
    gpg = "${gnupg}/bin/gpg";
  };
  propagatedBuildInputs = [ sops gnupg ];
} ./sops-pgp-hook.bash)
