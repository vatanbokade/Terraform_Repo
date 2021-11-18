# launch configuration
resource "aws_launch_configuration" "this" {
    name                          = "${var.name}-lc"
    image_id                      = var.image_id
    instance_type                 = var.instance_type
    iam_instance_profile          = var.iam_instance_profile
    key_name                      = var.key_name
    security_groups               = var.security_groups
    associate_public_ip_address   = var.associate_public_ip_address
    user_data                     = var.user_data
    enable_monitoring             = var.enable_monitoring
    ebs_optimized                 = var.ebs_optimized
    root_block_device {
        volume_type               = var.volume_type
        volume_size               = var.volume_size
        encrypted                 = var.encrypted
    }      
    spot_price =                    var.spot_price
    placement_tenancy =             var.placement_tenancy
}

#auto scalling group
resource "aws_autoscaling_group" "this" {
    name                          = "${var.name}-asg"
    max_size                      = var.max_size
    min_size                      = var.min_size
    health_check_grace_period     = var.health_check_grace_period
    health_check_type             = var.health_check_type
    desired_capacity              = var.desired_capacity
    force_delete                  = var.force_delete
    placement_group               = var.placement_group
    launch_configuration          = aws_launch_configuration.this.name
    vpc_zone_identifier           = var.vpc_zone_identifier
    target_group_arns             = var.target_group_arns
}