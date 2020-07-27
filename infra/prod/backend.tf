terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "douglasnaphas"

    workspaces {
      name = "cake-app-01--prod"
    }
  }
}
