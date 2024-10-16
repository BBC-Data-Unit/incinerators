## Burning rubbish now UK’s dirtiest form of power

In October 2024 we [published analysis revealing](https://www.bbc.co.uk/news/articles/cp3wxgje5pwo) that burning household rubbish in giant incinerators to make electricity is now the dirtiest way the UK generates power.

Scientists warned it was a “disaster for the climate” - and some called for a ban on new incinerators.

A [website breaking down the figures for over 200 authorities](https://hospitalbuildings.github.io/site2/index.html) was created to make it easier for reporters to see figures in their area and how those had changed over the period covered, and put it into regional context.

## Methodology

In order to calculate the emissions produced per unit of energy from England’s incinerators, the BBC needed to obtain the emissions produced and the power output from these sites.

Each incinerator in the UK produces [annual monitoring reports](https://www.data.gov.uk/dataset/0de19ba3-9c2f-417c-b092-4a6baaf9744d/incinerator-annual-monitoring-reporting), external, which record key statistics associated with the plant including its total emissions.

But in a few cases the emissions were not recorded in the annual monitoring report and so the figures recorded in the government’s pollution inventory report, external were used.

The IPCC, the UN climate science body, recommends that “biogenic” emissions - which come from burning organic matter like food - are not included in calculations because they are recorded under the emissions for the land and forestry sector.

So we had to remove these biogenic emissions from the total by working out what share of the waste being burned was organic.

Some operators recorded this, but in the cases where they did not the government guidelines, external advise applying a factor based on the share of household waste that was recorded as biogenic during a 2017 survey by the environmental NGO WRAP.

This gave the BBC the total fossil emissions - meaning those associated with burning the “fossil” waste (or non-organic waste) at the site, including plastic.

Then we calculated a carbon intensity figure - the carbon emissions per unit of energy generated - for every site, by dividing the total fossil emissions by the energy generated.

Methodological support was provided by Francesco Pomponi, professor of sustainability science at Edinburgh Napier University; Massimiliano Materazzi, associate professor of chemical engineering at University College London; and Dr Jim Hart, sustainability consultant.

## Get the data

* Environment Agency: [Incinerator Annual Monitoring Reporting](https://www.data.gov.uk/dataset/0de19ba3-9c2f-417c-b092-4a6baaf9744d/incinerator-annual-monitoring-reporting)
* Environment Agency: [Pollution Inventory](https://www.data.gov.uk/dataset/cfd94301-a2f2-48a2-9915-e477ca6d8b7e/pollution-inventory)

## Code and scripts

The website for the project was generated in R using a process called *parameterisation*.

* Files for the website can be found in the [website branch of this repo](https://github.com/BBC-Data-Unit/incinerators/tree/website)
* R notebook: [import and clean data](https://github.com/BBC-Data-Unit/incinerators/blob/main/code/00reshape.Rmd) from the Google Sheet version for partners - which has two header rows - for use in R
* R script used in the notebook above: [clean the first two rows where data has headers across two rows](https://github.com/BBC-Data-Unit/incinerators/blob/main/code/clean2rows.R)
* R notebook: [template for authority webpage](https://github.com/BBC-Data-Unit/incinerators/blob/main/code/01templateBYLA.Rmd) which inserts data into a template script, generates an interactive table for all authorities in the region, and a chart for the authority
* R notebook: [render markdown files](https://github.com/BBC-Data-Unit/incinerators/blob/main/code/02render.Rmd) from that template for each authority
* R notebook: [render HTML files](https://github.com/BBC-Data-Unit/incinerators/blob/main/code/03renderhtml.Rmd) from the markdown files
* R notebook: [index page](https://github.com/BBC-Data-Unit/incinerators/blob/main/code/index.Rmd) to render the index page
* R notebook: ['clean' HTML files](https://github.com/BBC-Data-Unit/incinerators/blob/main/code/04cleaning.Rmd) to fix bugs such as redundant HTML and non-working menus, and split the menu

In addition, an R notebook was used to [combine incinerator data with data on deprivation](https://github.com/BBC-Data-Unit/incinerators/blob/main/code/incineratorsIMD.Rmd) and create a flow chart to show the data processing.

## Partner usage and other coverage

* AOL: [Waste incineration jumps 65% since 2014 - BBC data](https://www.aol.com/waste-incineration-jumps-65-since-192039930.html)
* ENDS Report: [Waste industry responds to BBC claims that EfW is UK’s ‘dirtiest form of power’](https://www.endsreport.com/article/1892343/waste-industry-responds-bbc-claims-efw-uks-dirtiest-form-power)
* Sheffield Star: [Pollution concerns over high proportion of waste Sheffield Council sends to incinerators](https://www.thestar.co.uk/news/environment/pollution-concerns-over-high-proportion-of-waste-sheffield-council-sends-to-incinerators-4824881)

