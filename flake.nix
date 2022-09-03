{
  description = "Juni's Nix Flake Templates";

  outputs = { self }: {
    templates = {
      default = {
        path = ./default;
        description =
          "Juni's Vanilla Flake Template";
      };
    };
    defaultTemplate = self.templates.default;

  };
}
