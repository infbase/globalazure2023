az acr task create \
    --registry globalazure2023pt \
    --name taskhelloworld \
    --image helloworld:{{.Run.ID}} \
    --context https://github.com/infbase/globalazure2023.git#main \
    --file container-registry/examples/container-image/Dockerfile \
    --commit-trigger-enabled false \
    --base-image-trigger-enabled true \
    --schedule "dailyTimer:0 12 * * Mon-Fri" \
    --verbose