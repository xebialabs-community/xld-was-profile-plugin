<#--

    Copyright 2019 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->

<#import "/wasx/profile/commonFunctions.ftl" as cmn>

cd ${cmn.lookupWasAppServerRoot()}

<@compress single_line=true>
bin/manageprofiles.sh -create -profileName ${cmn.lookupProfileName()} -profilePath ${deployed.profileDir}/${cmn.lookupProfileName()} -nodeProfilePath ${deployed.nodeProfilePath} -cellName ${deployed.cellName} -nodeName ${deployed.nodeName} -appServerNodeName ${deployed.appServerNodeName}
<@cmn.DmgrProfileCreateOptions />
</@compress>

<#if deployed.startProfile == true>
${cmn.lookupWasAppServerRoot()}/profiles/${cmn.lookupProfileName()}/bin/startManager.sh
</#if>
