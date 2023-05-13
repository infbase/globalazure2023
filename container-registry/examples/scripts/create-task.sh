az acr task create \
    --registry globalazure2023pt \
    --name taskhelloworld \
    --image helloworld:{{.Run.ID}} \
    --context https://github.com/infbase/globalazure2023.git#main \
    --file container-registry/examples/container-image/Dockerfile \
    --git-access-token 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 \
    --pull-request-trigger-enabled true \
    --base-image-trigger-enabled true \
    --schedule "dailyTimer:0 12 * * Mon-Fri"