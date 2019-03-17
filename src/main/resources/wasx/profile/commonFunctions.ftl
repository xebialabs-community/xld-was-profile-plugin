<#--

    Copyright 2019 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->

<#macro DmgrProfileCreateOptions deployed=deployed>
  <#if deployed.templatePath??>-templatePath ${deployed.templatePath} </#if>
  <#if deployed.additionalOptions??>${deployed.additionalOptions} </#if>
</#macro>

<#macro AppSrvProfileCreateOptions deployed=deployed>
  <#if deployed.templatePath??>-templatePath ${deployed.templatePath} </#if>
  <#if deployed.dmgrProfilePath??>-dmgrProfilePath ${deployed.dmgrProfilePath} </#if>
  <#if deployed.portsFile??>-portsFile ${deployed.portsFile} </#if>
  <#if deployed.nodePortsFile??>-nodePortsFile ${deployed.nodePortsFile} </#if>
  <#if deployed.additionalOptions??>${deployed.additionalOptions} </#if>
</#macro>

<#function lookupProfileName>
  <#if deployed.profileName??>
    <#return deployed.profileName />
  <#else>
    <#return deployed.name />
  </#if>
</#function>

<#function lookupWasAppServerRoot>
  <#if deployed.wasAppServerRoot??>
      <#return deployed.wasAppServerRoot/>
  <#else>
      <#return deployed.container.wasAppServerRoot/>
  </#if>
</#function>
