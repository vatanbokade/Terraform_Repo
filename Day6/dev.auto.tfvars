name = "asg-module"
vpc_id = "vpc-eb8ce380" 
ingress = {
 "ssh" = {
    port = 22
    whitelist = ["127.0.0.0/32"]
 },

  "http" = {
    port = 80
    whitelist = ["127.0.0.1/32"]
},

   "https" = {
    port = 443
    #whitelist = ["127.0.0.2/32"]
 }
}

