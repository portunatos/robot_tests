*** Settings ***
Resource        base_keywords.robot
Resource        resource.robot
Suite Setup     Test Suite Setup
Suite Teardown  Test Suite Teardown


*** Variables ***
@{USED_ROLES}       tender_owner  viewer

*** Test Cases ***
Можливість прочитати всі тендери
  [Tags]   ${USERS.users['${viewer}'].broker}: Читання тендерів
  ...      viewer  tender_owner
  ...      ${USERS.users['${viewer}'].broker}
  ...      ${USERS.users['${tender_owner}'].broker}
  ...      tender_view
  ...      critical
  Можливість прочитати тендери