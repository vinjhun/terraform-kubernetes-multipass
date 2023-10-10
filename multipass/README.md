<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_external"></a> [external](#requirement\_external) | 2.3.1 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.4.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 cpu  = 2
	 disk  = "10G"
	 kube_version  = "1.28.2-1.1"
	 masters  = 1
	 mem  = "2G"
	 workers  = 3
}
```
## Resources

| Name | Type |
|------|------|
| [local_file.cloud_init_haproxy](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [local_file.cloud_init_master](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [local_file.cloud_init_masters](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [local_file.cloud_init_workers](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [local_file.haproxy_final_cfg](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [local_file.haproxy_initial_cfg](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [null_resource.haproxy](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [null_resource.haproxy_final](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [null_resource.kube_config](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [null_resource.master-dns](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [null_resource.master-node](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [null_resource.masters-dns](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [null_resource.masters-node](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [null_resource.workers-dns](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [null_resource.workers-node](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [external_external.haproxy](https://registry.terraform.io/providers/hashicorp/external/2.3.1/docs/data-sources/external) | data source |
| [external_external.kubejoin](https://registry.terraform.io/providers/hashicorp/external/2.3.1/docs/data-sources/external) | data source |
| [external_external.kubejoin-master](https://registry.terraform.io/providers/hashicorp/external/2.3.1/docs/data-sources/external) | data source |
| [external_external.master](https://registry.terraform.io/providers/hashicorp/external/2.3.1/docs/data-sources/external) | data source |
| [external_external.masters](https://registry.terraform.io/providers/hashicorp/external/2.3.1/docs/data-sources/external) | data source |
| [external_external.workers](https://registry.terraform.io/providers/hashicorp/external/2.3.1/docs/data-sources/external) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cpu"></a> [cpu](#input\_cpu) | n/a | `number` | `2` | no |
| <a name="input_disk"></a> [disk](#input\_disk) | n/a | `string` | `"10G"` | no |
| <a name="input_kube_version"></a> [kube\_version](#input\_kube\_version) | n/a | `string` | `"1.28.2-1.1"` | no |
| <a name="input_masters"></a> [masters](#input\_masters) | n/a | `number` | `1` | no |
| <a name="input_mem"></a> [mem](#input\_mem) | n/a | `string` | `"2G"` | no |
| <a name="input_workers"></a> [workers](#input\_workers) | n/a | `number` | `3` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_master"></a> [master](#output\_master) | n/a |
| <a name="output_workers"></a> [workers](#output\_workers) | n/a |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->
