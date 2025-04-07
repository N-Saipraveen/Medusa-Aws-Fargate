# variables that are being used

variable "aws_region" {
  description = "Default Region"
  type        = string
  default     = "us-east-1"  
  # region is USA, N-varginia
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = "myEcsTaskExecutionRole"
  # Role that grants permissions for ECS to pull 
  #Docker images from a repository 
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default     = "myEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of Availability Zones"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "saipraveenn/medusa-ecs-fargate:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 9000
  # the default port by the medusa-ecs-fargate
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
  # We are using 3 containers to run in the ECS 
}

variable "health_check_path" {
  default = "/"
  # the healthchk will be conducted in the root directory
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision"
  default     = "2048" # approx 2GB
}
