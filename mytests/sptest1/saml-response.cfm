<!doctype html>
<html>
    <title>SAML Response Handler</title>
    <body>
        <h2>Successfully consumed the SAML Assertion - response.cfm</h2>
    </body>
</html>

<!---
<cfset config = {
	idp = {name = "okta-identityProvider"},
	sp = {name = "test-SP"},
	relaystate = "page"
}>
<cfdump var='#config#' label='config'>


<cfset struct1 = StructNew()> 
<cfset struct1.idp = StructNew()> 
<cfset struct1.idp.name = "okta-identityProvider"> 
<cfset struct1.sp = StructNew()> 
<cfset struct1.sp.name = "test-SP"> 
<cfset authreq=XmlParse("#GetSAMLAuthRequest(struct1)#")> 
<cfdump var="#authreq#">

<cfset InitSAMLAuthRequest(config)>

<cfset RespStruct = "#ProcessSAMLResponse("okta-identityProvider", "test-SP")#"> 
<cfdump var="#RespStruct#"> 

<cfif RespStruct.AUTHENTICATED> 
<cflogin> 
<cfloginuser name="#RespStruct.NAMEID#" password="" roles="#ArrayToList(RespStruct.ATTRIBUTES)#"> 
</cflogin> 
</cfif>
--->

<!---
<cfset response = ProcessSAMLResponse("okta-identityProvider","test-SP")>

<cfdump var='#response#' label='SAML response'>
--->


