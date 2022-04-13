# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "cb_log_group" {
  name              = join("-",[var.ecs_prefix, terraform.workspace, "app"])
  retention_in_days = 30

  tags = {
    Name = join("-",[var.ecs_prefix, terraform.workspace, "log-group"])
  }
}

resource "aws_cloudwatch_log_stream" "cb_log_stream" {
  name           = join("-",[var.ecs_prefix, terraform.workspace, "log-stream"])
  log_group_name = aws_cloudwatch_log_group.cb_log_group.name
}

