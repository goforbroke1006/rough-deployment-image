# rough-deployment-image

Fast rough deployment via "sspass -p P@Ss \<your_commands\>"

### Usage

(Gitlab)

```yaml
cool-deploy:
  image: goforbroke1006/rough-deployment:latest
  tags:
    - SOME_TAG_TO_DISCOVER_YOUR_RUNNER
  stage: deploy
  only:
    - staging
  variables:
    TARGET_HOST:      192.168.1.13
    TARGET_USERNAME:  DEPLOY_USERNAME
    TARGET_PASSWORD:  ${PASSWORD_FROM_SETTINGS}
  script:
    - rssh docker pull ${IMAGE_NAME}:${IMAGE_TAG}
    - rssh docker-compose -f /home/${TARGET_USERNAME}/compose-pod-5-web/docker-compose.yml up -d --build AWESOME_SERVICE_NAME
```
