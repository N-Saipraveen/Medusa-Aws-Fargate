resource "aws_cloudwatch_log_group" "medusa_log_group" {
  name = "/ecs/my-ecs-log-group"
}

resource "aws_cloudwatch_log_stream" "medusa_log_stream" {
  log_group_name = aws_cloudwatch_log_group.medusa_log_group.name
  name           = "my-log-stream"
}