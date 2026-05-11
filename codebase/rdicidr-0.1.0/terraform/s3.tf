# NOTE: Comment out the terraform block if you are running locally to avoid using remote state
terraform {
  backend "s3" {
    bucket = "cloudsolvd-tf-backend"  # Your S3 bucket name
    key    = "react-aws-terraform-tf-state/terraform.tfstate"  # Path to the state file
    region = "us-east-1"  # Your AWS region
  }
}

# Create s3 bucket using s3-bucket module
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = var.bucket_name


  versioning = {
    enabled = true
  }

  website = {
    index_document = "index.html"
    error_document = "error.html"
  }
}
