*** Settings ***
Library			Selenium2Library
Suite Setup		Go to Google
Suite Teardown	Close All Browsers


*** Test Cases ***
Ensure the capital of a country is displayed
	Search and check on the first page		    Canada				Ottawa
	Search and check on not-first pages		    France				Paris
	Search and check on not-first pages		    The Netherlands		Amsterdam
	Search and check on not-first pages		    Denmark				some failed value



*** Keywords ***
Go to Google
	Open Browser	https://www.bing.com		Flsirefox


Search and check on the first page
	[Arguments]		${query}	${expected_result}
	Comment         Accepting cookies policy
	Wait Until Element Is Visible   xpath://*[@id='bnp_btn_accept']
	Click Element	xpath://*[@id='bnp_btn_accept']
	Comment         Entering a country name
	Input Text		id=sb_form_q	${query}
	Click Element	xpath://*[@id='search_icon']/*[1]
	Comment         Checking a country capital
	Wait Until Page Contains	${expected_result}

Search and check on not-first pages
	[Arguments]		${query}	${expected_result}
	Comment         Entering a country name
	Input Text		id=sb_form_q	${query}
	Click Element	id=sb_form_go
	Comment         Checking a country capital
	Wait Until Page Contains	${expected_result}