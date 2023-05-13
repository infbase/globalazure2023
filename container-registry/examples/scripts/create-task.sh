az acr task create \
    --registry globalazure2023pt \
    --name taskhelloworld \
    --image helloworld:{{.Run.ID}} \
    --context https://github.com/infbase/globalazure2023.git#main:container-registry/examples/container-image \
    --file Dockerfile \
    --commit-trigger-enabled false \
    --base-image-trigger-enabled true \
    --schedule "dailyTimer:0 12 * * Mon-Fri" \
    --verbose