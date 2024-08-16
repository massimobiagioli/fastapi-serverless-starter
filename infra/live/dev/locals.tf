locals {
  app = {
    name        = "fastapi-starter-${var.stage}"
    description = "FastAPI Serverless Starter application"
  }

  lambda = {
    main = {
      handler    = "app.main.handler"
      source_dir = "../../../app"
    }
  }

  layer = {
    dependencies = {
      name        = "fastapi-starter-${var.stage}-dependencies"
      description = "FastAPI Serverless Starter Dependencies Layer"
      build_dir   = "../../build/layers"
    }
  }

  tags = {
    Owner   = "Massimo Biagioli"
    Destroy = "false"
  }
}