# launch configuration
resource "aws_launch_configuration" "this" {
    name =                          var.name
    image_id =                      var.image_id
    instance_type =                 var.instance_type
    iam_instance-profile =          var.iam_instance-profile
    key_name =                      var.key_name
    security_groups =               var.security_groups
    associate_public_ip_address =   var.associate_public_ip_address
    user_data =                     var.user_data
    enable_monitoring =             var.enable_monitoring
    ebs_optimized =                 var.ebs_optimized
    root_block_device =             var.root_block_device
    #volume_type =                  var.volume_type
    #volume_size =                  var.volume_size
    #encrypted =                    var.encrypted
    ebs_block_device =              var.ebs_block_device
    spot_price =                    var.spot_price
    placement_tenancy =             var.placement_tenancy
}

# auto_scaling 

#resource "aws_autoscaling_group"{

}