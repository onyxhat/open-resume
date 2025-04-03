group "default" {
  targets = ["builder", "runner"]
}

target "builder" {
    context = "."
    dockerfile = "Dockerfile"
    target = "builder"
}

target "runner" {
  context = "."
  dockerfile = "Dockerfile"
  target = "runner"
  tags = ["{{registry}}/{{repository}}:{{version}}"]
}