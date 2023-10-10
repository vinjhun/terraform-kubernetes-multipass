output "master" {
  value = join(",", data.external.master[*].result.name, data.external.masters[*].result.name)
}

output "workers" {
  value = join(",", data.external.workers[*].result.name)
}
