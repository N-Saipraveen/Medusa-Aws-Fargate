[
  {
    "name": "medusa-app",
    "image": "${app_image}",
    "memory": ${fargate_memory},
    "cpu": ${fargate_cpu},
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ],
    "essential": true,
    "environment": [
      {
        "name": "AWS_REGION",
        "value": "${aws_region}"
      }
    ]
  }
]