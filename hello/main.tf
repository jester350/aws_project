# Terraform HCL
# test

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile = "default"
}

resource "aws_instance" "rhel" {
  ami           = "ami-096fda3c22c1c990a "
  instance_type = "t2.micro"
  key_name="a1"

  tags = {
    Name = "HelloTerraform"
  }

}  
resource "aws_key_pair" "test" {
  key_name   = "test2"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMhBR/s1LCLCooMBEdpauqntJ7kLzfM08pJxyeQA8C68VBthbW/elXEoGqxs3O2uGaeiwI8rinVu2mR+mfLFEj4FeZpfwUmQf3UrZ+xNFCdYRW9P2k0Jc5UnA23X7TSNk7fJSjAmo0Hcq7kDYbmdqZL02IvZ3DJnDrdBCpEyevOHZpS+Jp3qv/O8URFxqIjgQ/f3qDhQZht+EqQ7AF2BFlgGW6HcuziRZ5EjpmVAFTAXG9ujEPxs+h72UYqxbX9cEP0TskUibNw2DFpsDIrKJD3QQQnmBdpmNvMvkkq44Ynof8yH9h5PpbQa42F4FrfHczD//LauU73rQB6bp3symD jester350@gmail.com"
}