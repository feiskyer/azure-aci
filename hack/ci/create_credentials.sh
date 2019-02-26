#!/bin/bash
# This will build the credentials during the CI
cat <<EOF > "${TEST_CREDENTIALS_JSON}"
{
  "clientId": "$clientId",
  "clientSecret": "$clientSecret",
  "subscriptionId": "$subscriptionId",
  "tenantId": "$tenantId",
  "activeDirectoryEndpointUrl": "$activeDirectoryEndpointUrl",
  "resourceManagerEndpointUrl": "$resourceManagerEndpointUrl",
  "activeDirectoryGraphResourceId": "$activeDirectoryGraphResourceId",
  "sqlManagementEndpointUrl": "$sqlManagementEndpointUrl",
  "galleryEndpointUrl": "$galleryEndpointUrl",
  "managementEndpointUrl": "$managementEndpointUrl"
}
EOF

# This will build the log analytics credentials during CI
cat <<EOF > "${TEST_LOGANALYTICS_JSON}"
{
    "workspaceID": "$omsworkspaceID",
    "workspaceKey": "$omsworkspaceKey"
}
EOF
