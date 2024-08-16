locals {
  compatible_runtimes = ["python3.12"]
  bucket_prefix       = var.name
  build_dir           = "${path.module}/../../../build/layer"
  layer_dir           = "${local.build_dir}/${var.name}"
  filename            = "${local.build_dir}/${var.name}.zip"
  layer_s3_key        = "${var.name}-${filebase64sha256(local.pyproject_toml)}.zip"
  pyproject_toml      = "${path.module}/../../../pyproject.toml"
}