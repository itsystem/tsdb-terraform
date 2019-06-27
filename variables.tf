variable ami_centos {
  default = "ami-04cf43aca3e6f3de3"
}

variable ami_ubuntu {
  default = "ami-090f10efc254eaf55"
}

variable instance_type {
  default = "r4.xlarge"
}

variable key_name {
  default = "4pc2"
}

variable security_group {
  default = "4perconaconf"
}

variable volume_type {
  default = "gp2"
}

variable volume_size {
  default = 500
}
