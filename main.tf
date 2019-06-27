

resource "aws_instance" "influxdb" {
  ami           = "${var.ami_centos}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-influxdb"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "prometheus" {
  ami           = "${var.ami_centos}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-prometheus"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "mysql" {
  ami           = "${var.ami_centos}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-mysql"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "m3db" {
  ami           = "${var.ami_centos}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-m3db"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "cassandra1" {
  ami           = "${var.ami_centos}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-cassandra1"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "cassandra2" {
  ami           = "${var.ami_centos}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-cassandra2"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "cassandra3" {
  ami           = "${var.ami_centos}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-cassandra3"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "clickhouse1" {
  ami           = "${var.ami_ubuntu}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-clickhouse1"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "clickhouse2" {
  ami           = "${var.ami_ubuntu}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-clickhouse2"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "clickhouse3" {
  ami           = "${var.ami_ubuntu}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-clickhouse3"
  }

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
}

resource "aws_instance" "web" {
  ami           = "${var.ami_centos}"
  instance_type = "t2.nano"
  key_name = "${var.key_name}"
  security_groups = [ "${var.security_group}" ]

  tags = {
    Name = "tsdb-test-web"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = "8"
  }
}
