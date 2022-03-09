Instance: myquestionnaire
InstanceOf: Questionnaire
Description: "My Questionnaire"
Title:    "MyQuestionnaire"
* identifier[0].system = "http://example.com"
* identifier[0].value = "myquestionnaire"
* name = "myquestionnaire"
* title = "VIRAL HEPATITIS CASE REPORT FORM"
* status = #active

* insert Question(introtext,As cited in the Interim Guidelines on the Management of Patients with Hepatitis B and Hepatitis C infection\, physicians and health care providers of hepatitis treatment facilites shall submit and report data to the Epidemiology Bureau and their regional\, provincial and municipal counterparts. This form is to be filled-out on the initial visit of the client.,display,true,false)
* insert Question(visitInfo,VISIT INFORMATION,group,false,false)
* item[=]
  * insert Question(consultDate,Consult date,date,true,false)
