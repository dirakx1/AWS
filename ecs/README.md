# ECS 


## Example task defintion 
{
  "family": "my-task",
  "containerDefinitions": [
    {
        "environment": [],
        "name": "my-container",
        "image": "my-namespace/my-image",
        "cpu": 10,
        "memory": 500,
        "portMappings": [
            {
                "containerPort": 8080,
                "hostPort": 80
            }
        ],
        "entryPoint": [
            "java",
            "-jar",
            "my-jar.jar"
        ],
        "essential": true
    }
  ]
}


## References
* https://www.chakray.com/creating-fargate-ecs-task-aws-using-terraform/
* https://github.com/terraform-aws-modules/terraform-aws-alb/blob/v6.5.0/examples/complete-alb/main.tf


