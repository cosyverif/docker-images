package = "cosy-luax"
version = "master-1"

source = {
  url    = "git+https://github.com/cosyverif/docker-images.git",
  branch = "master",
}

description = {
  summary     = "Development environments for Lua in CosyVerif",
  detailed    = [[]],
  license     = "MIT/X11",
  homepage    = "https://github.com/cosyverif/lua-environments",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "busted",
  "cluacov",
  "luacheck",
  "luacov",
  "luacov-coveralls",
  "luasec",
}

build = {
  type    = "builtin",
  modules = {},
}
