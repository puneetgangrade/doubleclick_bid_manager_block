### Block Info

DoubleClick Campaign Manager and Bid Manager provide a platform that allows advertisers, trading desks, and agencies to place ads on publisher websites. DoubleClick then tracks the impact of the ad in terms of impressions (views), clicks, and conversions.

This Block is modeled on the schema brough in by [Google’s Data Transfer Service](https://cloud.google.com/bigquery/transfer/). It will cover many of the core entities involved with the DoubleClick Campaign Manager / Big Manager offering. Depending on how you use the DCM/DBM service, you may have additional entities brought in through thge Data Transfer Service, especially any custom built reports. This Block should serve as a great jump start. Happy modeling!

The schema documentation for Doubleclick can be found in [Google’s DCM Documentation](https://developers.google.com/doubleclick-advertisers/dtv2/reference/file-format). Please note that your naming might vary slightly.

### Analysis in This Block

* Funnels
* Website Lookup


### Data and Block Structure

* **Impressions, Clicks, and Activities** are the three main entities in the DBM dataset. These tables are joined onto one another using the  ``Auction_ID`` key, which each table shares. This allows us to view sequential activities during each user visit (akin to a sessionized view of a user event flow, without time durations or events limiting the session length)

* **Match Tables** are additional entities with information about various attributes of an event. There are hundreds of potential map tables based on which dimensions you choose to utilize. In the Block, we've included match tables for campaign (to tie events to a campaign), ads (to get attributes about the ads), cities (to get geolocation of events), and more. Each match table is joined onto our base "Impressions" table using ``many_to_one`` joins on the unique match key.


### Customizations
* The ``sql_table_name`` should be updated in each view file to match the name of your dataset and tables. Be sure to swap out the table name for each table in the "match_tables" view file, since that file contains all of our match tables.


### So Many Conversions

Doubleclick has several notions of a conversion. A "conversion" is defined as an event being executed, such as the user filling out a form or purchasing an item. There are multiple types of conversions, depending on the event path the user followed. Google uses a last-touch attribution model for conversions, meaning the last event dictates the type of conversion.

* **Postclick Conversions** are conversions that occur after a user has clicked on an ad. This is indicative of an effective ad, since it results in users clicking on that ad, and then converting. This is not delimited to the same user session, meaning a user can click an ad, turn off the computer and return the next day, then navigate directly to your website to make a purchase.

* **Postview Conversions** are conversions that occur after a user has seen an ad (called an "impression), but did not click on that ad. This means the user must navigate directly to a webpage to execute the conversion event after seeing the ad but not clicking on it. For example, if a user sees an ad, doesn't click it, but then the following day that user navigates directly to your website and purchases that item.

For additional examples, Merkle has written a [nice post](https://www.periscopix.co.uk/blog/post-click-vs-post-view-the-benefits-of-looking-at-all-conversions/) outlining several scenarios, and the type of conversions the scenarios would invoke.

On average, about 90% of conversions are classified as "postview", due to the nature in which people browse the web and make transactions. This shouldn't discount the ads as not effective since they didn't immediately result in a click. This fact highlights the effectivess of using Display Ads to market your product and gain brand awareness, which often results in a conversion down the line when the time is right for the user.


### Tying in Audience Information

If the audience tables are available in your schema, you can join them onto the "master" impressions table using the join logic: ${master.audience_segment_id} = ${match_table_audience_segments.id} AND ${master._data} = ${audience._data} to evaluate ad performance by demographic info.

### Questions about the data?

For any question that arises about the contents of the data coming through, please email Google support at dcm-support@google.com with an explanation of the issue, the desired outcome, and the hurdles to achieving that outcome.
