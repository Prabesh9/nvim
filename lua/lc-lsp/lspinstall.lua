---@diagnostic disable: undefined-global
require'lspinstall'.setup() -- important
local servers = {"lua", "dockerfile", "yaml", "bash", "json"}

local installed_servers = require'lspinstall'.installed_servers()

function EXISTS(server_list, server)
    for _, server_value in pairs(server_list) do
        if server_value == server then
            return true
        end
    end
    return false
end

for _, server in pairs(servers) do
    if not EXISTS(installed_servers, server) then
        vim.cmd("LspInstall " .. server)
    end
end

for _, server in pairs(installed_servers) do
    if EXISTS(servers, server) then
        require'lspconfig'[server].setup{}
    else
        vim.cmd("LspUninstall " .. server)
    end
end


