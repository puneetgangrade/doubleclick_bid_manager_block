### Block Info

This Block is modeled on the schema brough in by [Google’s Data Transfer Service](https://cloud.google.com/bigquery/transfer/). It will cover many of the core entities involved with the DoubleClick Campaign Manager / Big Manager offering. Depending on how you use the DCM/DBM service, you may have additional entities brought in through thge Data Transfer Service, especially any custom built reports. This Block should serve as a great jump start. Happy modeling!

The schema documentation for Doubleclick for Publishers can be found in [Google’s DBM Documentation](https://developers.google.com/bid-manager/dtv2/reference/file-format). Please note that your naming might vary slightly.


### Data and Block Structure

* **Impressions, Clicks, and Activities** are the three main entities in the DBM dataset. These tables are joined onto one another using the  ``Auction_ID`` key, which each table shares. This allows us to view sequential activities during each user visit (akin to a sessionized view of a user event flow, without time durations or events limiting the session length)

* **Match Tables** are additional entities with information about various attributes of an event. There are hundreds of potential map tables based on which dimensions you choose to utilize. In the Block, we've included match tables for campaign (to tie events to a campaign), ads (to get attributes about the ads), cities (to get geolocation of events), and more. Each match table is joined onto our base "Impressions" table using ``many_to_one`` joins on the unique match key.
