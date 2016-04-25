<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

<#import "/wasx/profile/commonFunctions.ftl" as cmn>

cd ${cmn.lookupWasAppServerRoot()}
bin/manageprofiles.sh -create -templatePath ${deployed.templatePath} -profileName ${cmn.lookupProfileName()} -profilePath ${deployed.profileDir}/${cmn.lookupProfileName()} -dmgrProfilePath ${deployed.dmgrProfilePath} -portsFile ${deployed.portsFile} -nodePortsFile ${deployed.nodePortsFile} -cellName ${deployed.cellName} -nodeName ${deployed.nodeName} -appServerNodeName ${deployed.appServerNodeName}


<#if deployed.startProfile == true>
${cmn.lookupWasAppServerRoot()}/profiles/${cmn.lookupProfileName()}/bin/startNode.sh
</#if>
<#if deployed.dmgrNode??>
${cmn.lookupWasAppServerRoot()}/profiles/${cmn.lookupProfileName()}/bin/addNode.sh ${deployed.dmgrNode}
</#if>
