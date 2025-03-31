resource "null_resource" "dummy" {
    count = lenth(var.x)
}

variable "x" {
    default = [
        1,
        200,
        300,
        400
    ]
}