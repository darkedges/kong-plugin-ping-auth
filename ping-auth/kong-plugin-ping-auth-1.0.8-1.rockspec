rockspec_format = "3.0"
package = "kong-plugin-ping-auth"
version = "1.0.8-1"
source = {
   url = "git+https://github.com/pingidentity/kong-plugin-ping-auth.git",
   tag = "1.0.8-1",
}
description = {
   summary = "Integrate the Open Policy Agent (OPA) with Kong API Gateway for API access management",
   detailed = [[
      see https://github.com/pingidentity/kong-plugin-ping-auth/tree/master/ping-auth for more information
   ]],
   homepage = "https://github.com/pingidentity/kong-plugin-ping-auth/tree/master/ping-auth", 
   issues_url = "https://github.com/pingidentity/kong-plugin-ping-auth/issues",
}
dependencies = {
   "lua-cjson",
   "lua-resty-http",
   "lua-resty-jwt"
}
test_dependencies = {
   "luacov",
   "luacheck",
}
test = {
   type = "busted",
   flags = { "-o", "gtest" },
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.ping-auth.access"] = "src/kong/plugins/ping-auth/access.lua",
      ["kong.plugins.ping-auth.handler"] = "src/kong/plugins/ping-auth/handler.lua",
      ["kong.plugins.ping-auth.network_handler"] = "src/kong/plugins/ping-auth/network_handler.lua",
      ["kong.plugins.ping-auth.response"] = "src/kong/plugins/ping-auth/response.lua",
      ["kong.plugins.ping-auth.schema"] = "src/kong/plugins/ping-auth/schema.lua"
   },
}