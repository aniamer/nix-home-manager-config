{ pkgs, lib, ... }:

# pkgs.vs-codebuildVscodeMarketplaceExtension {
pkgs.vscode-utils.buildVscodeMarketplaceExtension {
  mktplcRef = {
    publisher = "github";
    name = "copilot";
    version = "1.86.82";
    sha256 = "isaqjrAmu/08gnNKQPeMV4Xc8u0Hx8gB2c78WE54kYQ=";
  };
  meta = { license = lib.licenses.unfree; };
}
