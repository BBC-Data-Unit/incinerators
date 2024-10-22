## Burning rubbish now UK’s dirtiest form of power

In October 2024 we [published analysis revealing](https://www.bbc.co.uk/news/articles/cp3wxgje5pwo) that burning household rubbish in giant incinerators to make electricity is now the dirtiest way the UK generates power.

Scientists warned it was a “disaster for the climate” - and some called for a ban on new incinerators.

![Incin web screenshot](https://github.com/user-attachments/assets/b7206ad8-e2d2-4990-9da1-a99d7f4a212f)

A [website breaking down the figures for over 200 authorities](https://hospitalbuildings.github.io/site2/index.html) was created to make it easier for reporters to see figures in their area and how those had changed over the period covered, and put it into regional context. A [pack with all the information for reporters can be found here](https://github.com/BBC-Data-Unit/incinerators/blob/main/SDU_The%20rise%20in%20incineration%20across%20the%20UK.pdf)

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
* Waste by authority, 2014/15 and 2022/23: [XLSX file](https://github.com/BBC-Data-Unit/incinerators/blob/main/data/Incinerators%20for%20sharing%20-%20PARAMETERISATION%20VERSION.xlsx)
* FOI responses from waste authorities: [XLSX file](https://github.com/BBC-Data-Unit/incinerators/blob/main/data/incineration%20FOI.xlsx) - the [FOI request can be found here](https://github.com/BBC-Data-Unit/incinerators/blob/main/data/Incinerator%20FOI.docx)

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

The story featured across the BBC network including a package and outside broadcast for BBC Breakfast, bulletins across national radio and phone-ins on Five Live and Jeremy Vine on Radio Two. It was also used across a number of regional outlets including BBC London, where it was the lead story.

https://github.com/user-attachments/assets/0a991eee-5c37-4fa8-a02f-46fdb7c0a7bc

More than 40 partner organisations also used the story pack and data, including: 
  
* On the Wight: [Shift from landfill to incineration on the Isle of Wight prompts scrutiny](https://onthewight.com/shift-from-landfill-to-incineration-on-the-isle-of-wight-prompts-scrutiny/)

* STV: [Waste sent to incinerators increases by more than a fifth in past decade](https://news.stv.tv/north/waste-sent-to-incinerators-increases-by-more-than-fifth-in-past-decade-figures-show)

* Devon Air Radio: [Most of Devon's rubbish now goes up in smoke](https://www.devonairradio.com/news/devon-news/most-of-devons-rubbish-now-goes-up-in-smoke/)

* Daily Echo: [Southampton incinerating 70 per cent household waste](https://www.dailyecho.co.uk/news/24648943.southampton-incinerating-70-per-cent-household-waste/)

* Torbay Weekly: [Most of Devon's rubbish now goes up in smoke](https://www.torbayweekly.co.uk/news/local-news/1629706/most-of-devons-rubbish-now-goes-up-in-smoke.html)

* Ivybridge Today: [Most of Devon's rubbish now goes up in smoke](https://www.ivybridge-today.co.uk/news/most-of-devons-rubbish-now-goes-up-in-smoke-728036)

* Sheffield Star: [Pollution concerns over high proportion of waste Sheffield councils send to incinerators](https://www.thestar.co.uk/news/environment/pollution-concerns-over-high-proportion-of-waste-sheffield-council-sends-to-incinerators-4824881)

* White Horse News: [New calls to halt Westbury incinerator as BBC report shows burning waste is dirtier than coal](https://whitehorsenews.co.uk/new-calls-to-halt-westbury-incinerator-as-bbc-report-shows-waste-burning-is-dirtier-than-coal/)

* Dorset Echo: [Campaigners call for legal action over Portland waste incinerator](https://www.dorsetecho.co.uk/news/24652731.campaigners-legal-action-portland-waste-incinerator/)

* Yorkshire Post: [Yorkshire set to host more incinerators than any other part of the country](https://www.yorkshirepost.co.uk/news/environment/yorkshire-set-to-host-more-incinerators-than-any-other-part-of-the-country-4826138)

* Newark Advertiser: [Rise in incineration of waste faces pollution concerns, as Nottinghamshire County Council send 90,000 tonnes less to landfill](https://www.newarkadvertiser.co.uk/news/90-000-tonnes-less-waste-going-to-landfill-but-alternative-9387639/)

* Plymouth Herald: [Plymouth's incinerator labelled a disaster for the environment](https://www.plymouthherald.co.uk/news/plymouth-news/plymouths-incinerator-labelled-disaster-environment-9634115)

* South Hams Today: [Most of Devon's rubbish goes up in smoke](https://www.southhams-today.co.uk/news/most-of-devons-rubbish-now-goes-up-in-smoke-728036)

* Inside Croydon: [Health agencies ignore public concerns over incinerator](https://insidecroydon.com/2024/10/15/health-agencies-ignored-publics-concerns-on-incinerator/)

* Banbury FM: [Are energy from waste systems the green way forward?](https://banburyfm.com/news/are-energy-from-waste-systems-the-green-way-forward/)

* Inside Croydon: [Incinerator firm hands out 1m settlement to polluted residents](https://insidecroydon.com/2024/10/16/incinerator-firm-hands-out-1m-settlement-to-polluted-residents/)

* Exeter Today: [Devon recysles mroe than 63,000 tonnes of waste](https://www.exetertoday.co.uk/news/local-news/1630001/devon-recycles-more-than-63-000-tonnes-of-waste.html)

* Hampshire Chronicle: [Hampshire County Council incinerates more than half its waste](https://www.hampshirechronicle.co.uk/news/24653459.hampshire-county-council-incinerates-half-waste/)

* Crediton Courier: [Most of Devon's rubbish goes up in smoke](https://www.creditoncourier.co.uk/news/most-of-devons-rubbish-now-goes-up-in-smoke-new-figures-show-730109)

* Edinburgh Evening News: [Waste burning soars as county neglects recycling policy](https://www.pressreader.com/uk/edinburgh-evening-news/20241021/281767044694692?srsltid=AfmBOoqEXN42EI4MN3gLuZNhKaPBiga0z55lXsfXweWopAxLprKB91vf)

* Liverpool Echo: [It's horrendous living here...](https://www.liverpoolecho.co.uk/news/liverpool-news/its-horrendous-living-here-ive-30178296)

* Cornwall Live: [Plymouth's incinerator labelled a disaster for the environment](https://www.cornwalllive.com/news/local-news/plymouths-incinerator-labelled-disaster-environment-9634115)

* Bicester Advertiser: [Waste incineration in Oxfordshire raises pollution fears](https://www.bicesteradvertiser.net/news/24663073.waste-incineration-oxfordshire-raises-pollution-fears/)

* Sheffield Star: [Pollution concerns over high proportion of waste Sheffield Council sends to incinerators](https://www.thestar.co.uk/news/environment/pollution-concerns-over-high-proportion-of-waste-sheffield-council-sends-to-incinerators-4824881)

