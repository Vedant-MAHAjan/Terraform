# Variables help to maintain and change the code easily 
# Every resource can be pointed using a variable
# While chnaging the configuration, only the value of the variable is changed

# this is the basic available region
variable REGION {
  default = "us-east-1"
}

variable ZONE1 {
  default = "us-east-1a"
}

# The AMI for the instance is mentioned for each type
variable AMIS {
  type = map(any)
  default = {
    us-east-1 = "ami-03a6eaae9938c858c"
  }
}

# this is the default user for Linux EC2 instance
variable USER {
  default = "ec2-user"
}