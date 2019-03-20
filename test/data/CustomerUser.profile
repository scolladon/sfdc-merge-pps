<?xml version="1.0" encoding="UTF-8"?>
<Profile xmlns="http://soap.sforce.com/2006/04/metadata">
    <applicationVisibilities>
        <application>Console_Lightning_CRC</application>
        <default>false</default>
        <visible>false</visible>
    </applicationVisibilities>
    <applicationVisibilities>
        <application>_Lightning</application>
        <default>false</default>
        <visible>false</visible>
    </applicationVisibilities>
    <classAccesses>
        <apexClass>MassDeleteExtension</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_BundleDeepCloneController</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_CaseUnlockProvisioningController</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_ConvertLeadButton_CTRL</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_ConvertLeadButton_CTRL_TEST</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_Dashboard_VFC</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_EmailMessageResendEmailController</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_EndContractController</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_GetDrupalAdress</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_GetDrupalAdress_Test</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_InvoiceRollUpController</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_LastDiscussions_CLS</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_LastDiscussions_CLS_TEST</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_LeadAddBundle</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_LightningCTRL_BillingAccount</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_LightningCTRL_Equipement</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_OmniChannelStatusAutomation_CTRL</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_OmniChannelStatusAutomation_TEST</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_OpportunitySendOrderEmailController</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_SiteCheckEligibilityController</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_TaskAssignTaskController</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_UsageMassDeleteExtension</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>_UtilityCloneData_CLS</apexClass>
        <enabled>false</enabled>
    </classAccesses>
    <custom>true</custom>
    <description>[] : Customer Community Profile</description>
    <fieldPermissions>
        <editable>false</editable>
        <field>Lead.ResetWorkflow__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>_BillingSchedule__c.Conga_URL_Lightning__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>_CR__c.CongaURL_CR_Intervention_Lightning__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>_CR__c.CongaURL_lightning__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Zuora__ZInvoice__c.CongaURLNewLightning__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Zuora__ZInvoice__c.CongaURL_Lightning__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Zuora__ZInvoice__c.CongaURL_Relance1_lightning__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Zuora__ZInvoice__c.CongaURL_Relance2_lightning__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <layoutAssignments>
        <layout>Account-Account Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Case- Case Feed Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Case- Case Feed Layout</layout>
        <recordType>Case.CustomerDemand</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Case- Case Resil Feed Layout</layout>
        <recordType>Case.RemoveLocation</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Case- Case Resil Other Contracts Feed Layout</layout>
        <recordType>Case.RemoveOtherContracts</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Case- Case Resil Remove Offers Feed Layout</layout>
        <recordType>Case.RemoveOffers</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Case-CaseFeed</layout>
        <recordType>Case.Support</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Case-CaseFeed</layout>
        <recordType>Case.System</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Case-CaseFeed</layout>
        <recordType>Case.WebCallBack</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Contact-Contact Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>EmailMessage-Présentation E-mail</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Lead-Lead Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Opportunity-Opportunity Layout Final</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>PersonAccount-Person Account Layout</layout>
        <recordType>PersonAccount.PersonAccount</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>PersonAccount-Person Account Layout</layout>
        <recordType>PersonAccount.PersonAccountGuest</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>_Beneficiary__c-Beneficiary Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>_BillingSchedule__c-Billing Schedule Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>_Bundle__c-Bundle Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>_CR__c-CR Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>_Site__c-Site Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Task-Task Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Zuora__CustomerAccount__c-Zuora__Billing Account Z-Force Layout v2%2E9</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Zuora__Subscription__c-Zuora__Subscription Z-Force Layout v2%2E6</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Zuora__ZInvoice__c-Zuora__ZInvoice Z-Force Layout v2%2E9</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>zqu__Quote__c-zqu__Quote Layout - Read Only v7%2E0</layout>
        <recordType>zqu__Quote__c.zqu__ReadOnly</recordType>
    </layoutAssignments>
    <pageAccesses>
        <apexPage>Dashboard</apexPage>
        <enabled>true</enabled>
    </pageAccesses>
    <pageAccesses>
        <apexPage>_UsageMassDelete</apexPage>
        <enabled>false</enabled>
    </pageAccesses>
    <recordTypeVisibilities>
        <default>true</default>
        <recordType>Case.CustomerDemand</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Case.RemoveLocation</recordType>
        <visible>false</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Case.RemoveOffers</recordType>
        <visible>false</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Case.RemoveOtherContracts</recordType>
        <visible>false</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Case.Support</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Case.System</recordType>
        <visible>false</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Case.WebCallBack</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <personAccountDefault>true</personAccountDefault>
        <recordType>PersonAccount.PersonAccount</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>PersonAccount.PersonAccountGuest</recordType>
        <visible>false</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Task.Logistique</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>zqu__Quote__c.zqu__Amendment</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>zqu__Quote__c.zqu__Amendment_ReadOnly</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>zqu__Quote__c.zqu__Cancellation</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>zqu__Quote__c.zqu__Cancellation_ReadOnly</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>true</default>
        <recordType>zqu__Quote__c.zqu__Default</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>zqu__Quote__c.zqu__ReadOnly</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>zqu__Quote__c.zqu__Renewal</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>zqu__Quote__c.zqu__Renewal_ReadOnly</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <userLicense>Customer Community</userLicense>
</Profile>
