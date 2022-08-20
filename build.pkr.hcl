source "googlecompute" "development_environment" {
  source_image = "ubuntu-1804-bionic-v20220810"
  ssh_username = "packer"
  zone         = "us-central1-a"
  # edite a partir daqui --->
  project_id        = "devopscloud-331312"
  account_file      = "/home/pedoliveira/Downloads/devopscloud-331312-6dab5446e2f9.json"
  image_name        = "development-environment"
  image_description = "development_environment"
  # <--- até aqui
}

build {
  sources = ["sources.googlecompute.development_environment"]

  provisioner "ansible" {
    playbook_file = "./playbook.yml"
  }
}
