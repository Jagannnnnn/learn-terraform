  provider "local" {}
  resource "local_file" "foo" {
  content = "Hello World"
  filename = "/tmp/foo.bar"
}
  # Normal Variable
  variable "x" {
    default = 10
  }

  # List Variable

  variable "y" {
    default = [ 1, "abc", 0,3,false]
  }
# list can have a combination of types also

  variable "z" {
    default = {
      name = "Jagan"
      age = 25
    }
  }

  # Print variable on output
  output "x" {
    value = var.x
  }

  # if our value is just variable then var.x,if it is combination of strings then "${var.x}"
  output "x1" {
    value = "value of x - ${var.x}"
  }

  output "y1" {
    value = var.y[0]
  }

  output "z" {
    value = "Name - ${var.z["name"]}, Age - ${var.z.age}"
  }

  ### Variables from another files

  # tfvars - normally loaded , meaning these files are loaded to command line by using -var-file option
  # terraform apply -auto-approve -var-file=data.tfvars

  variable "input" {}
  output "input"{
    value = var.input
  }

  # auto.tfvars - automatically these files are loaded
  variable "class" {}
  output "class" {
    value = var.class
  }

  variable "trainer" {}
  output "trainer" {
    value = var.trainer
  }

