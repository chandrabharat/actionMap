Feature: display list of events
  
 Background: events have been added to database
  Given the following states exist:
  | name                    | symbol | fips_code | is_territory | lat_min | lat_max | long_min | long_max |
  | California              | CA     | 1 |0|0|0|0|0|
  And the following counties exist:
  |state_id| name | fips_code | fips_class |
  |1 | Orange County | 1 | oooooo |
  And the following events exist:
  |name|description|start_time|end_time|state_symbol|fips_code|
  |Pride Parade|Annual pride parade|10:00|11:00|CA|1|
  And I am on the home page