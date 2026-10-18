-- Ansible YAML in projects with an ansible.cfg: top-level playbooks and inventory,
-- group/host vars, and role files other than files/ and templates/
vim.filetype.add({
  pattern = {
    ['.*%.ya?ml'] = function(path)
      local root = vim.fs.root(path, 'ansible.cfg')
      if not root then
        return
      end
      local rel = path:sub(#root + 2)
      local role_dir = rel:match('^roles/[^/]+/(%a+)/')
      if rel:match('^[^/]+%.ya?ml$') or rel:match('^group_vars/') or rel:match('^host_vars/')
        or (role_dir and role_dir ~= 'files' and role_dir ~= 'templates') then
        return 'yaml.ansible'
      end
    end,
  },
})
