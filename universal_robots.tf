locals {
  universal_robots_team = [
    "RobertWilbrandt",
    "VinDp",
    "fmauch",
    "t-schnell",
  ]
  universal_robots_repositories = [
    "Universal_Robots_Client_Library-release",
    "Universal_Robots_ROS2_Driver-release",
    "ur_description-release",
    "ur_msgs-release",
    "ur_simulation_gz-release",
  ]
}

module "universal_robots_team" {
  source       = "./modules/release_team"
  team_name    = "universal_robots"
  members      = local.universal_robots_team
  repositories = local.universal_robots_repositories
  depends_on   = [github_membership.members, github_repository.repositories]
}
