# TeamCymru Scout

## Why use the TeamCymru Scout Looker Block?

**(1) Account Usage** - Account usage gives the details about the account utilization which is configured for TeamCymru Scout App for Google Chronicle.

**(2) Live Investigation of IP/Domain** - Provides the information of the IP/Domain on demand and visualize the important details about the IP/Domain.

**(3) Empowering Enriched IP/Domain Information** - The Indicator (IP/Domain) Overview Dashboard provides an overview of the IPs and domains enriched using TeamCymru Scout APIs.

**(4) Correlation of the IP/Domains** - This provides details of IPs and domains correlated with other sources. When a match is found across the Chronicle log types, the information of the matching identity is collected and displayed in this dashboard.

## Block Structure

For more information on the Block structure and customization, refer to [Looker Marketplace Documnetation](https://docs.looker.com/data-modeling/marketplace/customize-blocks#marketplace_blocks_that_use_refinements)

## Technical installation

### Pre-requisites

- This block works with Chronicle datasets in Google BigQuery.
- BigQuery Export feature needs to be enabled for your Chronicle tenant. (Reach out to your Chronicle representative to set this up.)
- Admin Role User - to create a database connection and install block from the marketplace

## Installation steps (GitHub)

### Create a Chronicle connection

1. To create a connection to Google Chronicle, first open the Looker instance and navigate to the Home page.
2. Now open the main menu, select Admin, and then go to the Connection page.
3. Now click on the Add connection to create a new connection and name it as **chronicle**.
4. Select Google BigQuery Standard SQL in the Dialect. Now several new fields will appear.
5. Enter Billing Project ID field where Chronicle data is present.
6. Enter the relevant Dataset name (datalake).
7. To configure authentication, select the service account method and upload your Chronicle service account file.
8. In the optional settings, set both the timestamps (Database timestamp and query timestamp) as UTC (the time fields shown in dashboards will be populated accordingly).
9. Click on Test to check the connectivity of Looker with Google Chronicle database.
10. Click on the Connect button to complete the connection setup. Looker is now connected to the Google Chronicle database.

### Get the Block from GitHub Repository

1. Fork this TeamCymru Scout repository. Make sure to uncheck the option for fork only the main branch.
2. Go to Looker and turn on “Development Mode” from the sidebar panel.
3. Select Projects from the Develop menu.
4. From the LookML Projects page, select New LookML Project to open the New Project page.
5. On the New Project page, configure these options for your new project:
   - **Project Name**: Give project name ‘teamcymru_scout_dashboards’
   - **Starting Point**: Select Blank Project.
   - Click on Create Project. The project will be created and opened in the Looker IDE.
6. Click on the Settings icon from the navigation bar, and open the Configure Git page by selecting the Configure Git button.
7. In Looker's Configure Git section, paste the URL of the for forked TeamCymru Scout Looker Dashboard Git Repository in the Repository URL field, then select Continue.
8. Enter the github username and Personal Access Token, then click “Test and Finalize Setup”.
9. If you get an error like “Ensure credential allow write access failed”, just enter the username and token again and click “Skip Tests and Finalize Setup”.
10. Click on the git action tab and select ‘develop-dashboards-production’ branch in the current branch.
11. Now, you should be able to see the code. If not do the following:
    - In the ‘Git Actions’ tab from the left side, click on the “Pull from…” option.
    - Select the “Pull From Remote (develop-dashboards-production)” option and click on the Confirm button.
    - After the above steps, In the Git Actions, click on the “Deploy to Production” or you can press “Deploy to Production” from the top right corner.
12. On the Homepage of your Looker instance, navigate to the “LookML dashboards” tab under the “Folders” tab to access and view all the dashboards.
13. The connection name defined at the top of the **teamcymru_scout_dashboards.model** file must match the connection name created earlier. If the user has named it **chronicle**, no changes are necessary. Otherwise, the **connection** field needs to be updated with the correct connection name.


## Installation Steps (Looker Marketplace)

Currently Block is not published on marketplace, please use steps from getting the block from GitHub Repository.

1. After a successful connection click on the ‘marketplace’ button in the top-right corner.
2. Click on “Discover”. It will open a Looker marketplace.
3. Search “TeamCymru Scout”, it will open the page for installation.
4. Click on “install+”.
5. Select “Install” And “Accept” terms and conditions.
6. Click on Agree and Continue.
7. Select Connection Name from the dropdown and enter the other values.
8. After Successful installation, the user will be able to see the TeamCymru Scout block under Home => Blocks.

Note: Currently marketplace submissions are on hold from Looker side. Hence TeamCymru Scout - Chronicle Integration dashboards will not be available.

## Known Behavior
- At a time, a maximum of 5,000 rows can be displayed in any visualization.
- At a time, a maximum of 50 values can be displayed in any pie chart.
- Looker will only show data from the past 180 days, but this can vary as per the retention policy configured in BigQuery.
- According to the query time zone selected by the user in connection with the Chronicle database, the Looker dashboards would be reflected according to the configured timezone.
- While redirecting to Google Chronicle, it will show an error like this ‘ERROR: Search has encountered an error and could not load data. Please try again, and contact support if this error continues.’ if the searched date range is more than 3 months.
