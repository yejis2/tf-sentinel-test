policy "terraform-restrict-s3" {
 source            = "./terraform-restrict-s3.sentinel"
 enforcement_level = "hard-mandatory"
}

policy "terraform-restrict-sg" {
 source            = "./terraform-restrict-sg.sentinel"
 enforcement_level = "hard-mandatory"
}
