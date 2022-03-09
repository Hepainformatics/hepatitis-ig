RuleSet: Question(linkId, text, type, required, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].required = {required}
* item[=].repeats = {repeats}


/*usage:
* insert Question(linkid,text,group,true,true)
* item[=]
  * insert Question(linkid,text,group,true,true)


Example:
Instance: myquestionnaire
InstanceOf: Questionnaire
Description: "My Questionnaire"
Title:    "MyQuestionnaire"
* identifier[0].system = "http://example.com"
* identifier[0].value = "myquestionnaire"
* name = "myquestionnaire"
* title = "VIRAL HEPATITIS CASE REPORT FORM"
* status = #active

* insert Question(linkid,text,group,true,true)
* item[=]
  * insert Question(linkid,text,group,true,true)


*/

