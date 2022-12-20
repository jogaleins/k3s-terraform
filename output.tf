output "agent_id" {
    description = "vmid of the agent resource"
    value = "${proxmox_vm_qemu.tf-agents.*.id}"
}

output "agent_ip_addresses" {
    description = "vmid of the agent resource"
    value = "${proxmox_vm_qemu.tf-agents.*.ipconfig0}"
}