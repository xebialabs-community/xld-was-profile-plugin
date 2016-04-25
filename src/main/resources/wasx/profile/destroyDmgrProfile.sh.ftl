<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

<#import "/wasx/profile/commonFunctions.ftl" as cmn>

<#if deployed.startProfile == true>
${cmn.lookupWasAppServerRoot()}/profiles/${cmn.lookupProfileName()}/bin/stopManager.sh
</#if>

${cmn.lookupWasAppServerRoot()}/bin/manageprofiles.sh -delete -profileName ${cmn.lookupProfileName()}

<#if deployed.removeDirOnDelete == true>
rm -rf ${deployed.profilePath}
</#if>
