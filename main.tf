terraform {
 backend "remote" {
   organization = "chavo4"

   workspaces {
     name = "terraform-github-actions"
   }
 }
}

resource "null_resource" "terraform-github-actions" {
 triggers = {
   value = "This resource was created using GitHub Actions!"
 }
}
