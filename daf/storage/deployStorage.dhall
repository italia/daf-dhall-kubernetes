  let config =  ./../../api/Deployment/default
  ⫽ { name = "storage-manager"
  , hostAliases = ./../hostaliases
  , secretVolumes = ./secretVolumes
  , pathVolumes = [{name = "krb5conf", path = "/etc/krb5.conf"}]
  , configMapVolumes = [{name = "config-volume", configMap = "storage-manager-conf"}]
  , persistentVolumes = [{name = "glusterfsvol", claimName = "gluster-claim"}]
  , containers =
                [   ./../../api/Deployment/defaultContainer
                  ⫽ ./../env.dhall
                  ⫽ { name = "storage-manager"
                    , imageName = "daf-storage-manager"
                    , imageTag = "1.0.4"
                    , port = [ 9000 ] : Optional Natural
                    , mounts = ./volumeMounts
                    , simpleEnvVars = [ { mapKey = "JAVA_OPTS", mapValue = "-server -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:+PerfDisableSharedMem -XX:+ParallelRefProcEnabled -Xmx2g -Xms2g -XX:MaxPermSize=1024m" } ]
                    , secretEnvVars = ./secretEnvVars
                    }
                ]
            }

in  ./../../api/Deployment/mkDeployment config
