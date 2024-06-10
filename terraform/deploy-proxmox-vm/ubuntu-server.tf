resource "proxmox_vm_qemu" "ubuntu-server" {
    name = "ubuntu-server2"
    desc = ""
    vmid = "702"
    target_node = "pve"

    agent = 1

    onboot = true 


    clone = "ubuntu-server"
    cores = 2
    sockets = 1                                             
    cpu = "host"
    memory = 2048

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    # disk {
    #     storage = "local"
    #     type = "virtio"
    #     size = "32G"
    # }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.1.72/24,gw=192.168.1.1"
    nameserver = "8.8.8.8"
    ciuser = "admin"
    sshkeys = <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDKTQuMkEoMU06cz8Bh1X1pEsRM1FKtQ1CQySnfcrHqEzlZ0U0l573iXE1qw4A/R7LjUsVLplmcKn9JF0GJxfyYy4J1vCSxyH+jHICzuGF5nISphjMp25XYAsYdhOia+HA+us2XAmNcMMCu7/UCadqqiuLGs+GE370xIQNzXfIAm/NEREuxmITVLnS2vfbkwG/QuJ6MMSEZfzLwdEZVsVl/OSlcjzWeg9/1Ux1PlJfJfZeANc09i2hJT9eILBxvUngeK8O/AuhCSB6P3RRmpqEAb6myr68THZlAm8Q1TmONZYBvFA48D8zoMdL4Ag1urvitdi6/yBbljzR1AizXojpXdVmDs01dzFr0fBcaFPoPih1RMpSjxRJqhv4yQ2U8GU6UYBXPiuUPi1GBqIJdzgtz1Ka+icQxorMF1z5Lgp1Kc2a4PdSw5H1u9j1ITSFNJUXk3E8hceQGjL3psyaBXXJkL0gaypB2JbQHBbLKndy7bc5O4OinS5fV9PkSbLn9BJ0= vlad@vlad-HP-ProBook-640-G1
    EOF 
}    

