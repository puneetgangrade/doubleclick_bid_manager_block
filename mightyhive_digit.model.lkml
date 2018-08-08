connection: "mightyhive_digit_looker_bq_poc"

# include all the views
include: "*.view"

# include all the dashboards
#include: "*.dashboard"

persist_for: "24 hours"

explore: advertiser_reachby_site {
  }

explore: campaign_reachby_site {
}
