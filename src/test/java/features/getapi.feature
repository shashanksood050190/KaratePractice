Feature: GET API feature

Scenario: get user details
Given url baseUrl+'/public/v1/users'
And path '30'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = response.data.name
* def actId = response.data.id
* def actEmail = response.data.email
* print actName
* match actName == 'Mahendra Kakkar DVM'
* match actId == 30
* match actEmail == 'dvm_mahendra_kakkar@ebert.io'

Scenario: get user details - user not found
Given url baseUrl+'/public/v1/users'
And path '1'
When method GET
Then status 404
