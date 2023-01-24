Last login: Mon Jan 23 22:15:53 on ttys000
kaush@Kaushals-Macbook Downloads % ssh -i EC2devops.pem ubuntu@13.40.217.244
The authenticity of host '13.40.217.244 (13.40.217.244)' can't be established.
ED25519 key fingerprint is SHA256:5yV44YOTLjQsEX56YZ6Q4jazDKBL1XIVqmAjlqIZAn4.
This host key is known by the following other names/addresses:
    ~/.ssh/known_hosts:4: ec2-35-176-31-195.eu-west-2.compute.amazonaws.com
    ~/.ssh/known_hosts:5: 35.176.31.195
    ~/.ssh/known_hosts:6: ec2-13-41-229-201.eu-west-2.compute.amazonaws.com
    ~/.ssh/known_hosts:8: ec2-13-41-224-96.eu-west-2.compute.amazonaws.com
    ~/.ssh/known_hosts:11: 13.40.218.229
    ~/.ssh/known_hosts:12: 13.41.189.129
    ~/.ssh/known_hosts:13: 13.42.29.47
    ~/.ssh/known_hosts:14: 18.170.106.17
    (20 additional names omitted)
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '13.40.217.244' (ED25519) to the list of known hosts.
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-1028-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Tue Jan 24 23:01:49 UTC 2023

  System load:  0.93505859375     Processes:                109
  Usage of /:   96.0% of 7.57GB   Users logged in:          0
  Memory usage: 53%               IPv4 address for docker0: 172.17.0.1
  Swap usage:   0%                IPv4 address for eth0:    172.31.36.63

  => / is using 96.0% of 7.57GB

 * Ubuntu Pro delivers the most comprehensive open source security and
   compliance features.

   https://ubuntu.com/aws/pro

61 updates can be applied immediately.
To see these additional updates run: apt list --upgradable


Last login: Tue Jan 24 22:07:28 2023 from 86.6.102.251
ubuntu@ip-172-31-36-63:~$ ls -ltr
total 12
drwxrwxr-x 3 ubuntu ubuntu 4096 Oct 16 13:16 python_learning
drwxrwxr-x 5 ubuntu ubuntu 4096 Jan 19 17:38 new_risknarrative
drwxrwxr-x 3 ubuntu ubuntu 4096 Jan 24 22:51 terraform
ubuntu@ip-172-31-36-63:~$ 
ubuntu@ip-172-31-36-63:~$ 
ubuntu@ip-172-31-36-63:~$ cd terraform/
ubuntu@ip-172-31-36-63:~/terraform$ terraform plan
aws_route_table_association.my-rtb-i: Refreshing state... [id=rtbassoc-0d459e125abdc97e6]
aws_vpc.my-vpc: Refreshing state... [id=vpc-05b38dec78b0d24d4]
aws_subnet.my-subnet: Refreshing state... [id=subnet-09479eea9b60ca7b2]
aws_security_group.my-sgw: Refreshing state... [id=sg-0868df4908b524ae5]
aws_instance.my-ec2: Refreshing state... [id=i-075a9bedd0df1bf96]
aws_route_table.my-rtb: Refreshing state... [id=rtb-00fb2396efcd27070]
aws_key_pair.my_key_pair: Refreshing state... [id=kaushal-key]
aws_internet_gateway.my-igw: Refreshing state... [id=igw-078e1dc26f8e10f71]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.my-ec2 will be destroyed
  # (because aws_instance.my-ec2 is not in configuration)
  - resource "aws_instance" "my-ec2" {
      - ami                                  = "ami-084e8c05825742534" -> null
      - arn                                  = "arn:aws:ec2:eu-west-2:479158839530:instance/i-075a9bedd0df1bf96" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "eu-west-2b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-075a9bedd0df1bf96" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = "eni-059c6fa10c22d40f9" -> null
      - private_dns                          = "ip-172-0-10-169.eu-west-2.compute.internal" -> null
      - private_ip                           = "172.0.10.169" -> null
      - public_ip                            = "35.177.98.146" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-09479eea9b60ca7b2" -> null
      - tags                                 = {
          - "Name" = "Kaushal-Test-instnace"
        } -> null
      - tags_all                             = {
          - "Name" = "Kaushal-Test-instnace"
        } -> null
      - tenancy                              = "default" -> null
      - user_data                            = "c8b963991e5741824a64afd2e497a78833904530" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0868df4908b524ae5",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-06a083b5e330a9ce9" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_internet_gateway.my-igw will be destroyed
  # (because aws_internet_gateway.my-igw is not in configuration)
  - resource "aws_internet_gateway" "my-igw" {
      - arn      = "arn:aws:ec2:eu-west-2:479158839530:internet-gateway/igw-078e1dc26f8e10f71" -> null
      - id       = "igw-078e1dc26f8e10f71" -> null
      - owner_id = "479158839530" -> null
      - tags     = {
          - "Name" = "Kaushal-Test-igw"
        } -> null
      - tags_all = {
          - "Name" = "Kaushal-Test-igw"
        } -> null
      - vpc_id   = "vpc-05b38dec78b0d24d4" -> null
    }

  # aws_key_pair.my_key_pair will be destroyed
  # (because aws_key_pair.my_key_pair is not in configuration)
  - resource "aws_key_pair" "my_key_pair" {
      - arn         = "arn:aws:ec2:eu-west-2:479158839530:key-pair/kaushal-key" -> null
      - fingerprint = "5b:74:44:18:77:c1:d4:6e:77:7f:b1:1f:50:d5:49:7d" -> null
      - id          = "kaushal-key" -> null
      - key_name    = "kaushal-key" -> null
      - key_pair_id = "key-0141ca3d11ea3bd65" -> null
      - key_type    = "rsa" -> null
      - public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyOAPgOXCWyFi82GsHfxwuzXZRAxrpZ+xC2DI8GfUzcD64uOPDnB13q4fnMWG15p35OVyYxunYKtZ4TRD9O+Wt6wGEEphdxPHW3LiLDLouII1VoSAOjkX+sCUvaRAtCoZS1Zu/nZQAtBSvs3mybccxFsoexCP/kWHphs0b/7FVK4Q4JWhyn1DIbh4h2vFfBJgQ34lXXCn9cjPxdxRUc5mDgsfzs/l1HwEaX2Hry48Go/KofWn+ecZdMPLPX5owqRXp4xQSAD2XCOdKicXhS3mWFKE2fIshVh98KVmrVQ1GQEHy2rrhq0eiE0lXHvcjEyCgps6NIuXRdMv7IhJ4POR26zRaBSJKl2Yho+SfUHRgarGBPDqr3Skj6bSdky96DWncEHLEHBxzKTHNWYVdxp0klLFufryia5SvAKHh2aC39cwkwyZRRJH9UUNQOoInbV/aWY74zBRJHbCN3GdORvkZcx9fx80bqW78zhN7GhYO92qdpFBpGaALtBhPevd9ypE= ubuntu@ip-172-31-36-63" -> null
      - tags        = {} -> null
      - tags_all    = {} -> null
    }

  # aws_route_table.my-rtb will be destroyed
  # (because aws_route_table.my-rtb is not in configuration)
  - resource "aws_route_table" "my-rtb" {
      - arn              = "arn:aws:ec2:eu-west-2:479158839530:route-table/rtb-00fb2396efcd27070" -> null
      - id               = "rtb-00fb2396efcd27070" -> null
      - owner_id         = "479158839530" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - carrier_gateway_id         = ""
              - cidr_block                 = "0.0.0.0/0"
              - core_network_arn           = ""
              - destination_prefix_list_id = ""
              - egress_only_gateway_id     = ""
              - gateway_id                 = "igw-078e1dc26f8e10f71"
              - instance_id                = ""
              - ipv6_cidr_block            = ""
              - local_gateway_id           = ""
              - nat_gateway_id             = ""
              - network_interface_id       = ""
              - transit_gateway_id         = ""
              - vpc_endpoint_id            = ""
              - vpc_peering_connection_id  = ""
            },
        ] -> null
      - tags             = {
          - "Name" = "Kaushal-Test-rtb"
        } -> null
      - tags_all         = {
          - "Name" = "Kaushal-Test-rtb"
        } -> null
      - vpc_id           = "vpc-05b38dec78b0d24d4" -> null
    }

  # aws_route_table_association.my-rtb-i will be destroyed
  # (because aws_route_table_association.my-rtb-i is not in configuration)
  - resource "aws_route_table_association" "my-rtb-i" {
      - id             = "rtbassoc-0d459e125abdc97e6" -> null
      - route_table_id = "rtb-00fb2396efcd27070" -> null
      - subnet_id      = "subnet-09479eea9b60ca7b2" -> null
    }

  # aws_security_group.my-sgw will be destroyed
  # (because aws_security_group.my-sgw is not in configuration)
  - resource "aws_security_group" "my-sgw" {
      - arn                    = "arn:aws:ec2:eu-west-2:479158839530:security-group/sg-0868df4908b524ae5" -> null
      - description            = "my security gateway for ec2 instance" -> null
      - egress                 = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 0
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "-1"
              - security_groups  = []
              - self             = false
              - to_port          = 0
            },
        ] -> null
      - id                     = "sg-0868df4908b524ae5" -> null
      - ingress                = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 8080
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 9000
            },
          - {
              - cidr_blocks      = [
                  - "13.41.196.46/32",
                  - "13.41.199.29/32",
                ]
              - description      = ""
              - from_port        = 22
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 22
            },
        ] -> null
      - name                   = "my-ec2-sgw" -> null
      - owner_id               = "479158839530" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "my_security_rules"
        } -> null
      - tags_all               = {
          - "Name" = "my_security_rules"
        } -> null
      - vpc_id                 = "vpc-05b38dec78b0d24d4" -> null
    }

  # aws_subnet.my-subnet will be destroyed
  # (because aws_subnet.my-subnet is not in configuration)
  - resource "aws_subnet" "my-subnet" {
      - arn                                            = "arn:aws:ec2:eu-west-2:479158839530:subnet/subnet-09479eea9b60ca7b2" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "eu-west-2b" -> null
      - availability_zone_id                           = "euw2-az3" -> null
      - cidr_block                                     = "172.0.10.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-09479eea9b60ca7b2" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "479158839530" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "Kaushal-Test-subnet"
        } -> null
      - tags_all                                       = {
          - "Name" = "Kaushal-Test-subnet"
        } -> null
      - vpc_id                                         = "vpc-05b38dec78b0d24d4" -> null
    }

  # aws_vpc.my-vpc will be destroyed
  # (because aws_vpc.my-vpc is not in configuration)
  - resource "aws_vpc" "my-vpc" {
      - arn                                  = "arn:aws:ec2:eu-west-2:479158839530:vpc/vpc-05b38dec78b0d24d4" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "172.0.10.0/24" -> null
      - default_network_acl_id               = "acl-033f1d2633da16cfb" -> null
      - default_route_table_id               = "rtb-0af8b69588f6baae8" -> null
      - default_security_group_id            = "sg-0607671d42db148dc" -> null
      - dhcp_options_id                      = "dopt-00ab871d134949630" -> null
      - enable_classiclink                   = false -> null
      - enable_classiclink_dns_support       = false -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-05b38dec78b0d24d4" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-0af8b69588f6baae8" -> null
      - owner_id                             = "479158839530" -> null
      - tags                                 = {
          - "Name" = "Kaushal-Test-VPC"
        } -> null
      - tags_all                             = {
          - "Name" = "Kaushal-Test-VPC"
        } -> null
    }

Plan: 0 to add, 0 to change, 8 to destroy.
╷
│ Warning: Value for undeclared variable
│ 
│ The root module does not declare a variable named "vpc_cidr" but a value was found in file "terraform.tfvars". If you meant to use this value, add a
│ "variable" block to the configuration.
│ 
│ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your organization. To reduce
│ the verbosity of these warnings, use the -compact-warnings option.
╵
╷
│ Warning: Value for undeclared variable
│ 
│ The root module does not declare a variable named "env" but a value was found in file "terraform.tfvars". If you meant to use this value, add a "variable"
│ block to the configuration.
│ 
│ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your organization. To reduce
│ the verbosity of these warnings, use the -compact-warnings option.
╵
╷
│ Warning: Values for undeclared variables
│ 
│ In addition to the other similar warnings shown, 2 other variable(s) defined without being declared.
╵

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
ubuntu@ip-172-31-36-63:~/terraform$ terraform apply --auto approve
╷
│ Error: Failed to parse command-line flags
│ 
│ flag provided but not defined: -auto
╵

For more help on using this command, run:
  terraform apply -help
ubuntu@ip-172-31-36-63:~/terraform$ terraform apply --auto-approve
aws_instance.my-ec2: Refreshing state... [id=i-075a9bedd0df1bf96]
aws_subnet.my-subnet: Refreshing state... [id=subnet-09479eea9b60ca7b2]
aws_route_table.my-rtb: Refreshing state... [id=rtb-00fb2396efcd27070]
aws_route_table_association.my-rtb-i: Refreshing state... [id=rtbassoc-0d459e125abdc97e6]
aws_internet_gateway.my-igw: Refreshing state... [id=igw-078e1dc26f8e10f71]
aws_key_pair.my_key_pair: Refreshing state... [id=kaushal-key]
aws_vpc.my-vpc: Refreshing state... [id=vpc-05b38dec78b0d24d4]
aws_security_group.my-sgw: Refreshing state... [id=sg-0868df4908b524ae5]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.my-ec2 will be destroyed
  # (because aws_instance.my-ec2 is not in configuration)
  - resource "aws_instance" "my-ec2" {
      - ami                                  = "ami-084e8c05825742534" -> null
      - arn                                  = "arn:aws:ec2:eu-west-2:479158839530:instance/i-075a9bedd0df1bf96" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "eu-west-2b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-075a9bedd0df1bf96" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = "eni-059c6fa10c22d40f9" -> null
      - private_dns                          = "ip-172-0-10-169.eu-west-2.compute.internal" -> null
      - private_ip                           = "172.0.10.169" -> null
      - public_ip                            = "35.177.98.146" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-09479eea9b60ca7b2" -> null
      - tags                                 = {
          - "Name" = "Kaushal-Test-instnace"
        } -> null
      - tags_all                             = {
          - "Name" = "Kaushal-Test-instnace"
        } -> null
      - tenancy                              = "default" -> null
      - user_data                            = "c8b963991e5741824a64afd2e497a78833904530" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0868df4908b524ae5",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-06a083b5e330a9ce9" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_internet_gateway.my-igw will be destroyed
  # (because aws_internet_gateway.my-igw is not in configuration)
  - resource "aws_internet_gateway" "my-igw" {
      - arn      = "arn:aws:ec2:eu-west-2:479158839530:internet-gateway/igw-078e1dc26f8e10f71" -> null
      - id       = "igw-078e1dc26f8e10f71" -> null
      - owner_id = "479158839530" -> null
      - tags     = {
          - "Name" = "Kaushal-Test-igw"
        } -> null
      - tags_all = {
          - "Name" = "Kaushal-Test-igw"
        } -> null
      - vpc_id   = "vpc-05b38dec78b0d24d4" -> null
    }

  # aws_key_pair.my_key_pair will be destroyed
  # (because aws_key_pair.my_key_pair is not in configuration)
  - resource "aws_key_pair" "my_key_pair" {
      - arn         = "arn:aws:ec2:eu-west-2:479158839530:key-pair/kaushal-key" -> null
      - fingerprint = "5b:74:44:18:77:c1:d4:6e:77:7f:b1:1f:50:d5:49:7d" -> null
      - id          = "kaushal-key" -> null
      - key_name    = "kaushal-key" -> null
      - key_pair_id = "key-0141ca3d11ea3bd65" -> null
      - key_type    = "rsa" -> null
      - public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyOAPgOXCWyFi82GsHfxwuzXZRAxrpZ+xC2DI8GfUzcD64uOPDnB13q4fnMWG15p35OVyYxunYKtZ4TRD9O+Wt6wGEEphdxPHW3LiLDLouII1VoSAOjkX+sCUvaRAtCoZS1Zu/nZQAtBSvs3mybccxFsoexCP/kWHphs0b/7FVK4Q4JWhyn1DIbh4h2vFfBJgQ34lXXCn9cjPxdxRUc5mDgsfzs/l1HwEaX2Hry48Go/KofWn+ecZdMPLPX5owqRXp4xQSAD2XCOdKicXhS3mWFKE2fIshVh98KVmrVQ1GQEHy2rrhq0eiE0lXHvcjEyCgps6NIuXRdMv7IhJ4POR26zRaBSJKl2Yho+SfUHRgarGBPDqr3Skj6bSdky96DWncEHLEHBxzKTHNWYVdxp0klLFufryia5SvAKHh2aC39cwkwyZRRJH9UUNQOoInbV/aWY74zBRJHbCN3GdORvkZcx9fx80bqW78zhN7GhYO92qdpFBpGaALtBhPevd9ypE= ubuntu@ip-172-31-36-63" -> null
      - tags        = {} -> null
      - tags_all    = {} -> null
    }

  # aws_route_table.my-rtb will be destroyed
  # (because aws_route_table.my-rtb is not in configuration)
  - resource "aws_route_table" "my-rtb" {
      - arn              = "arn:aws:ec2:eu-west-2:479158839530:route-table/rtb-00fb2396efcd27070" -> null
      - id               = "rtb-00fb2396efcd27070" -> null
      - owner_id         = "479158839530" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - carrier_gateway_id         = ""
              - cidr_block                 = "0.0.0.0/0"
              - core_network_arn           = ""
              - destination_prefix_list_id = ""
              - egress_only_gateway_id     = ""
              - gateway_id                 = "igw-078e1dc26f8e10f71"
              - instance_id                = ""
              - ipv6_cidr_block            = ""
              - local_gateway_id           = ""
              - nat_gateway_id             = ""
              - network_interface_id       = ""
              - transit_gateway_id         = ""
              - vpc_endpoint_id            = ""
              - vpc_peering_connection_id  = ""
            },
        ] -> null
      - tags             = {
          - "Name" = "Kaushal-Test-rtb"
        } -> null
      - tags_all         = {
          - "Name" = "Kaushal-Test-rtb"
        } -> null
      - vpc_id           = "vpc-05b38dec78b0d24d4" -> null
    }

  # aws_route_table_association.my-rtb-i will be destroyed
  # (because aws_route_table_association.my-rtb-i is not in configuration)
  - resource "aws_route_table_association" "my-rtb-i" {
      - id             = "rtbassoc-0d459e125abdc97e6" -> null
      - route_table_id = "rtb-00fb2396efcd27070" -> null
      - subnet_id      = "subnet-09479eea9b60ca7b2" -> null
    }

  # aws_security_group.my-sgw will be destroyed
  # (because aws_security_group.my-sgw is not in configuration)
  - resource "aws_security_group" "my-sgw" {
      - arn                    = "arn:aws:ec2:eu-west-2:479158839530:security-group/sg-0868df4908b524ae5" -> null
      - description            = "my security gateway for ec2 instance" -> null
      - egress                 = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 0
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "-1"
              - security_groups  = []
              - self             = false
              - to_port          = 0
            },
        ] -> null
      - id                     = "sg-0868df4908b524ae5" -> null
      - ingress                = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 8080
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 9000
            },
          - {
              - cidr_blocks      = [
                  - "13.41.196.46/32",
                  - "13.41.199.29/32",
                ]
              - description      = ""
              - from_port        = 22
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 22
            },
        ] -> null
      - name                   = "my-ec2-sgw" -> null
      - owner_id               = "479158839530" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "my_security_rules"
        } -> null
      - tags_all               = {
          - "Name" = "my_security_rules"
        } -> null
      - vpc_id                 = "vpc-05b38dec78b0d24d4" -> null
    }

  # aws_subnet.my-subnet will be destroyed
  # (because aws_subnet.my-subnet is not in configuration)
  - resource "aws_subnet" "my-subnet" {
      - arn                                            = "arn:aws:ec2:eu-west-2:479158839530:subnet/subnet-09479eea9b60ca7b2" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "eu-west-2b" -> null
      - availability_zone_id                           = "euw2-az3" -> null
      - cidr_block                                     = "172.0.10.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-09479eea9b60ca7b2" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "479158839530" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "Kaushal-Test-subnet"
        } -> null
      - tags_all                                       = {
          - "Name" = "Kaushal-Test-subnet"
        } -> null
      - vpc_id                                         = "vpc-05b38dec78b0d24d4" -> null
    }

  # aws_vpc.my-vpc will be destroyed
  # (because aws_vpc.my-vpc is not in configuration)
  - resource "aws_vpc" "my-vpc" {
      - arn                                  = "arn:aws:ec2:eu-west-2:479158839530:vpc/vpc-05b38dec78b0d24d4" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "172.0.10.0/24" -> null
      - default_network_acl_id               = "acl-033f1d2633da16cfb" -> null
      - default_route_table_id               = "rtb-0af8b69588f6baae8" -> null
      - default_security_group_id            = "sg-0607671d42db148dc" -> null
      - dhcp_options_id                      = "dopt-00ab871d134949630" -> null
      - enable_classiclink                   = false -> null
      - enable_classiclink_dns_support       = false -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-05b38dec78b0d24d4" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-0af8b69588f6baae8" -> null
      - owner_id                             = "479158839530" -> null
      - tags                                 = {
          - "Name" = "Kaushal-Test-VPC"
        } -> null
      - tags_all                             = {
          - "Name" = "Kaushal-Test-VPC"
        } -> null
    }

Plan: 0 to add, 0 to change, 8 to destroy.
aws_instance.my-ec2: Destroying... [id=i-075a9bedd0df1bf96]
aws_route_table_association.my-rtb-i: Destroying... [id=rtbassoc-0d459e125abdc97e6]
aws_key_pair.my_key_pair: Destroying... [id=kaushal-key]
aws_key_pair.my_key_pair: Destruction complete after 0s
aws_route_table_association.my-rtb-i: Destruction complete after 0s
aws_route_table.my-rtb: Destroying... [id=rtb-00fb2396efcd27070]
aws_route_table.my-rtb: Destruction complete after 0s
aws_internet_gateway.my-igw: Destroying... [id=igw-078e1dc26f8e10f71]
aws_instance.my-ec2: Still destroying... [id=i-075a9bedd0df1bf96, 10s elapsed]
aws_internet_gateway.my-igw: Still destroying... [id=igw-078e1dc26f8e10f71, 10s elapsed]
aws_instance.my-ec2: Still destroying... [id=i-075a9bedd0df1bf96, 20s elapsed]
aws_internet_gateway.my-igw: Still destroying... [id=igw-078e1dc26f8e10f71, 20s elapsed]
aws_instance.my-ec2: Still destroying... [id=i-075a9bedd0df1bf96, 30s elapsed]
aws_internet_gateway.my-igw: Still destroying... [id=igw-078e1dc26f8e10f71, 30s elapsed]
aws_internet_gateway.my-igw: Destruction complete after 37s
aws_instance.my-ec2: Destruction complete after 40s
aws_subnet.my-subnet: Destroying... [id=subnet-09479eea9b60ca7b2]
aws_security_group.my-sgw: Destroying... [id=sg-0868df4908b524ae5]
aws_subnet.my-subnet: Destruction complete after 0s
aws_security_group.my-sgw: Destruction complete after 0s
aws_vpc.my-vpc: Destroying... [id=vpc-05b38dec78b0d24d4]
aws_vpc.my-vpc: Destruction complete after 1s
╷
│ Warning: Value for undeclared variable
│ 
│ The root module does not declare a variable named "vpc_cidr" but a value was found in file "terraform.tfvars". If you meant to use this value, add a
│ "variable" block to the configuration.
│ 
│ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your organization. To reduce
│ the verbosity of these warnings, use the -compact-warnings option.
╵
╷
│ Warning: Value for undeclared variable
│ 
│ The root module does not declare a variable named "env" but a value was found in file "terraform.tfvars". If you meant to use this value, add a "variable"
│ block to the configuration.
│ 
│ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your organization. To reduce
│ the verbosity of these warnings, use the -compact-warnings option.
╵
╷
│ Warning: Values for undeclared variables
│ 
│ In addition to the other similar warnings shown, 2 other variable(s) defined without being declared.
╵

Apply complete! Resources: 0 added, 0 changed, 8 destroyed.
ubuntu@ip-172-31-36-63:~/terraform$ 
ubuntu@ip-172-31-36-63:~/terraform$ 
ubuntu@ip-172-31-36-63:~/terraform$ 
ubuntu@ip-172-31-36-63:~/terraform$ ls -ltr
total 52
-rw-rw-r-- 1 ubuntu ubuntu   144 Jan 17 23:19 main.tf_bkp
-rw-rw-r-- 1 ubuntu ubuntu 16983 Jan 23 22:17 terraform.tfstate.1674512241.backup
-rw-rw-r-- 1 ubuntu ubuntu     0 Jan 24 22:29 alb.tf
-rw-rw-r-- 1 ubuntu ubuntu     0 Jan 24 22:29 output.tf
-rw-rw-r-- 1 ubuntu ubuntu   122 Jan 24 22:50 terraform.tfvars
-rw-rw-r-- 1 ubuntu ubuntu    45 Jan 24 22:51 main.tf
-rw-rw-r-- 1 ubuntu ubuntu 15276 Jan 24 23:02 terraform.tfstate.backup
-rw-rw-r-- 1 ubuntu ubuntu   182 Jan 24 23:03 terraform.tfstate
ubuntu@ip-172-31-36-63:~/terraform$ vi main.tf
ubuntu@ip-172-31-36-63:~/terraform$ vi main.tf
ubuntu@ip-172-31-36-63:~/terraform$ 
ubuntu@ip-172-31-36-63:~/terraform$ 
ubuntu@ip-172-31-36-63:~/terraform$ docker ps
CONTAINER ID   IMAGE            COMMAND             CREATED          STATUS          PORTS                                       NAMES
801b47664866   devops-exer:v4   "catalina.sh run"   24 seconds ago   Up 21 seconds   0.0.0.0:9008->8080/tcp, :::9008->8080/tcp   RiskNarrative04
ubuntu@ip-172-31-36-63:~/terraform$ cd ..
ubuntu@ip-172-31-36-63:~$ ls -ltr
total 12
drwxrwxr-x 3 ubuntu ubuntu 4096 Oct 16 13:16 python_learning
drwxrwxr-x 5 ubuntu ubuntu 4096 Jan 19 17:38 new_risknarrative
drwxrwxr-x 3 ubuntu ubuntu 4096 Jan 24 23:06 terraform
ubuntu@ip-172-31-36-63:~$ cd -
/home/ubuntu/terraform
ubuntu@ip-172-31-36-63:~/terraform$ ls -ltr
total 52
-rw-rw-r-- 1 ubuntu ubuntu   144 Jan 17 23:19 main.tf_bkp
-rw-rw-r-- 1 ubuntu ubuntu 16983 Jan 23 22:17 terraform.tfstate.1674512241.backup
-rw-rw-r-- 1 ubuntu ubuntu     0 Jan 24 22:29 alb.tf
-rw-rw-r-- 1 ubuntu ubuntu     0 Jan 24 22:29 output.tf
-rw-rw-r-- 1 ubuntu ubuntu   122 Jan 24 22:50 terraform.tfvars
-rw-rw-r-- 1 ubuntu ubuntu 15276 Jan 24 23:02 terraform.tfstate.backup
-rw-rw-r-- 1 ubuntu ubuntu   182 Jan 24 23:03 terraform.tfstate
-rw-rw-r-- 1 ubuntu ubuntu  2189 Jan 24 23:06 main.tf
ubuntu@ip-172-31-36-63:~/terraform$ vi main.tf

        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "my_security_rules"
    }
}

resource "aws_key_pair" "my_key_pair" {
    key_name = "kaushal-key"
    public_key = file(var.my_key)
}

resource "aws_instance" "my-ec2" {
    ami = "ami-084e8c05825742534"
    availability_zone = "eu-west-2b"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.my-subnet.id
    associate_public_ip_address = true
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [aws_security_group.my-sgw.id]

    user_data = <<-EOF
    sudo yum update -y
    sudo yum install -y docker
    sudo service docker start
    sudo usermod -a -G docker ec2-user
    EOF


    tags = {
        Name = "${var.env}-instnace"
    }
}                                                                                                                      105,1         Bot
