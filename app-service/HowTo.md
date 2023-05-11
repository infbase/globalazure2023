# Deploy App Service on Azure Portal

## Sign in to Azure Portal

Sign in to the Azure portal at https://portal.azure.com with your account.

## Create Azure resources

1. On the upper top search bar, type app services. Under Services, select App Services.

![Search bar](/app-service/img/Search.png "Search for the App Services on the bar")

2. In the App Services page, select + Create.

In the Basics tab, under Project details, ensure the correct subscription is selected and then select to Create new resource group. Type myResourceGroup for the name.

3. Under Instance details, type a globally unique name for your web app and select Docker Container. Select Linux for the Operating System. Select a Region you want to serve your app from.

![Instance Details](/app-service/img/InstanceDetailspng.png "Each app should have it's own unique name")

4. Under App Service Plan, select Create new App Service Plan. Type myAppServicePlan for the name. To change to the Free tier, select Change size, select the Dev/Test tab, select F1, and select the Apply button at the bottom of the page.

5. Select the Next: Docker > button at the bottom of the page.

In the Docker tab, select Single Container under Options and Docker Hub for the Image Source. Under Docker Hub options, set the following values:

```
Access Type: Public
Image and Tag: karthequian/helloworld:latest
```

![Docker](/app-service/img/Docker.png "Docker configurations")

6. Select the Next: Networking > button at the bottom of the page.

In the Networking tab, select Enable Public access

![Networking](/app-service/img/Networking.png "Networking configurations")

7. Select the Next: Monitoring > button at the bottom of the page.

There's no need to set monitoring for this demo deployment, so leave the default.

8. Select the Next: Tags > button at the bottom of the page.

![Tags](/app-service/img/Tags.png "Always important to tag your resources!")

9. Select the Next: Review + Create > button at the bottom of the page.

![Review](/app-service/img/ReviewAndCreate.png "Always important to tag your resources!")

10. After validation runs, select the Create button at the bottom of the page.

After deployment is complete, select Go to resource.

## Browse to the app
Browse to the deployed application in your web browser at the URL http://<app-name>.azurewebsites.net.
Or click on Browse on the resource overview page.