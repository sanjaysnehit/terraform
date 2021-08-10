
output "instance_ip" {
  description = "The public ip for ssh access"
  value       = aws_instance.test-ec2-instance.public_ip
}

resource "aws_key_pair" "key" {
  key_name   = "key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCfeR2EmD5mn7X9lrpt0lqgOAlRTvVDsFp8yFxYfX/QLZ4lQhG0AwfEPFz8xY3Rixxs7SQG+BhGfN1R1/FPJXFYhsN7kK1XYsM9D+6LqTGYgbiSqTwfcR3Pr9qQbPVy6NcsRien2RTkwm4pylWVj+2HS7bjRvcXc8f+DnV4ivPevs2qnxrklrbqdzbZfrSUtRuLL6w+NJfezrvbA01H10iCJ+rPRGY6l27Ag3eJ5PHd+/dqehBnCdwqzCPMih0+CB4fdJU8dfLlcKdmzD+i6+yzExmZykLOEHNvQHwfwX0Ts6zbPSPjYFErDO5T7GsMhM9pPbHbRFaxGsVmmKNshZpR sanjay@DESKTOP-I89FM8U"
}
