group "default" {
  targets = ["runner"]
}

target "runner" {
  context = "."
  dockerfile = "Dockerfile"
  target = "runner"
}