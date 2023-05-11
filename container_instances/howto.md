# Deploy Container Instance on Azure Portal

## Sign in to Azure Portal

Sign in to the Azure portal at https://portal.azure.com with your account.

## Create Azure resources

1. On the upper top search bar, type container instances. Under Services, select Container Instances.

![Search bar](/app-service/img/Search.png "Search for the Container Instances service on the bar")

2. In the Container Instances page, select + Create.

In the Basics tab, under Project details, ensure the correct subscription is selected and then select to Create new resource group. Type myResourceGroup for the name.

3. Under Container details, type a unique name for your container in the selected resource group. Select a region and leave the defaults for Availability Zones and SKU.
Set the image source to Other registry and type karthequian/helloworld:latest, the remaining options can be left as default.

![Container Details](/container_instances/img/ContainerDetails.png "Container should be unique in the resource group")

4. Select the Next: Networking > button at the bottom of the page.

5. On the networking tab, set the Networking type to Public - in order for a Public IP to be created and associated with the container, and a type a DNS name label at your choice, that will be part of the FQDN to access the container.
Specific ports can also be configured, but the default is enough for this sample.

![Networking](/container_instances/img/Networking.png "Networking options for accessing the container")

5. Select the Next: Advanced > button at the bottom of the page.

6. Advanced options include Restart Policy, Environment variables and the ability to execute a command when the container is started.
Default values can be used for this demo.

![Advanced](/container_instances/img/Advanced.png "Advanced options for the container")

7. Select the Next: Tags > button at the bottom of the page.

While tags are not required for this demo, it's always a good practice to tag your resources in order to be easily found and grouped.

8. Select the Next: Review + create > button at the bottom of the page.

Once all information is validated, select the Create button at the bottom of the page.

![Review](/container_instances/img/Review.png "Review all the details of your container")

9. After deployment is complete, select Go to resource.

## Browse to the app
Browse to the deployed application in your web browser using the FQDN that is available on the resource page.
A Hello message will be displayed, as well as some other details.

![FQDN](/container_instances/img/fqdn.png "Search for the App Services on the bar")

![Search bar](/container_instances/img/HelloWorld.png "Search for the App Services on the bar")