group "default" {
  targets = ["builder", "runner"]
}

target "runner" {
  context = "."
  dockerfile = "Dockerfile"
  target = "runner"
  tags = ["{{registry}}/{{repository}}:{{version}}"]
}