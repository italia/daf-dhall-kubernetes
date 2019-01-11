let config =
  ../api/Deployment/default
  //
  { name = "nginx"
  , replicas = 2
  , hostAliases = ./hostaliases
  , containers =
    [ ../api/Deployment/defaultContainer
    // ./env.dhall
    //
      { name = "nginx"
      , imageName = "nginx"
      , imageTag = "1.15.3"
      , port = [ 80 ] : Optional Natural
      }
    ]
  }

in ../api/Deployment/mkDeployment config
