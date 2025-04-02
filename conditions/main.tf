resource "local_file" "test" {
  filename = "/tmp/a.txt"
  content = var.content == null ? "Null Content" : var.content

}

variable "content" {
  default = null
}

resource "null_resource" "test" {
  count = 0
}