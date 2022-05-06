-- Find more schemas here: https://www.schemastore.org/json/
-- local schemas = {
--   {
--     description = "Kubernetes native configuration management",
--     fileMatch = {"/*.k8s.yaml"},
--     url = "https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json",
--   },
-- }

-- local opts = {
--   settings = {
--     yaml = {
--         schemas = {
--             ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
--         },
--     },
--   }
-- }
--
-- return opts

local opts = {
	settings = {
		yaml = {
			hover = true,
			completion = true,
			validate = true,
			schemaStore = {
				enable = true,
				url = "https://www.schemastore.org/api/json/catalog.json",
			},
			schemas = {
				kubernetes = {
					"daemon.{yml,yaml}",
					"manager.{yml,yaml}",
					"restapi.{yml,yaml}",
					"role.{yml,yaml}",
					"role_binding.{yml,yaml}",
					"*onfigma*.{yml,yaml}",
					"*ngres*.{yml,yaml}",
					"*ecre*.{yml,yaml}",
					"*eploy*.{yml,yaml}",
					"*eployment*.{yml,yaml}",
					"*ervic*.{yml,yaml}",
					"kubectl-edit*.yaml",
				},
			},
		},
	},
}

return opts
