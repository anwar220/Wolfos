# classes3.dex

.class public interface abstract Landroid/telephony/IMiuiTelephonyManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCallState()I
.end method

.method public abstract getCallStateForSlot(I)I
.end method

.method public abstract getCallStateForSubscription(I)I
.end method

.method public abstract getCellLocationForSlot(I)Landroid/telephony/CellLocation;
.end method

.method public abstract getCtVolteSupportedMode()I
.end method

.method public abstract getDataActivity()I
.end method

.method public abstract getDataActivityForSlot(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDataActivityForSubscription(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDataState()I
.end method

.method public abstract getDataStateForSlot(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDataStateForSubscription(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract getDeviceIdForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getDeviceIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getEsimGPIOState()I
.end method

.method public abstract getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getIccCardCount()I
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImeiForSlot(I)Ljava/lang/String;
.end method

.method public abstract getImeiForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getImeiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLine1NumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getLine1NumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMeidForSlot(I)Ljava/lang/String;
.end method

.method public abstract getMeidForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getMeidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMiuiDeviceId()Ljava/lang/String;
.end method

.method public abstract getMiuiLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public abstract getMobileNetworkCapability(I)Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorName()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getNetworkTypeForSlot(I)I
.end method

.method public abstract getNetworkTypeForSubscription(I)I
.end method

.method public abstract getNrConfigType()I
.end method

.method public abstract getNrConfigType(I)I
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPhoneTypeForSlot(I)I
.end method

.method public abstract getPhoneTypeForSubscription(I)I
.end method

.method public abstract getProductEid()Ljava/lang/String;
.end method

.method public abstract getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator()Ljava/lang/String;
.end method

.method public abstract getSimOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorName()Ljava/lang/String;
.end method

.method public abstract getSimOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSimSerialNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSimStateForSlot(I)I
.end method

.method public abstract getSimStateForSubscription(I)I
.end method

.method public abstract getSmallDeviceId()Ljava/lang/String;
.end method

.method public abstract getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract getXMNetworkType()I
.end method

.method public abstract getXMNetworkType(I)I
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract hasIccCard(I)Z
.end method

.method public abstract isChinaTelecomTest(Ljava/lang/String;)Z
.end method

.method public abstract isCmccCooperationDevice()Z
.end method

.method public abstract isConcurrentCallsPossible()Z
.end method

.method public abstract isDisableLte(Z)Z
.end method

.method public abstract isDsdaEnabled()Z
.end method

.method public abstract isDualNrEnabled()Z
.end method

.method public abstract isDualNrSupported()Z
.end method

.method public abstract isDualSaEnabled()Z
.end method

.method public abstract isDualSaSupported()Z
.end method

.method public abstract isDualVolteSupported()Z
.end method

.method public abstract isEsimActive()Z
.end method

.method public abstract isFeatureDisabledByCloud(Ljava/lang/String;)Z
.end method

.method public abstract isFeatureEnabledByCloud(Ljava/lang/String;)Z
.end method

.method public abstract isFiveGCapable()Z
.end method

.method public abstract isGameFiveGOptimizeSupported()Z
.end method

.method public abstract isGwsdSupport()Z
.end method

.method public abstract isImsRegistered(I)Z
.end method

.method public abstract isMiuiCustForKrOps()Z
.end method

.method public abstract isMultiSimEnabled()Z
.end method

.method public abstract isNrCAEnabled(I)Z
.end method

.method public abstract isNrCaSupported()Z
.end method

.method public abstract isRegionForTaiWan()Z
.end method

.method public abstract isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isSupportEsimForCountry(Ljava/lang/String;)Z
.end method

.method public abstract isUserFiveGEnabled()Z
.end method

.method public abstract isUserFiveGEnabled(I)Z
.end method

.method public abstract isUserFiveGSaEnabled()Z
.end method

.method public abstract isUserFiveGSaEnabled(I)Z
.end method

.method public abstract isVideoTelephonyAvailable(I)Z
.end method

.method public abstract isVoNREnabled(I)Z
.end method

.method public abstract isVoNRSupported()Z
.end method

.method public abstract isVoiceCapable()Z
.end method

.method public abstract isVolteEnabledByPlatform()Z
.end method

.method public abstract isVolteEnabledByPlatform(I)Z
.end method

.method public abstract isVolteEnabledByUser()Z
.end method

.method public abstract isVolteEnabledByUser(I)Z
.end method

.method public abstract isVtEnabledByPlatform()Z
.end method

.method public abstract isVtEnabledByPlatform(I)Z
.end method

.method public abstract isWifiCallingAvailable(I)Z
.end method

.method public abstract listen(Landroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
.end method

.method public abstract setCrbtDisable(Z)V
.end method

.method public abstract setDsdaEnabled(ZI)V
.end method

.method public abstract setDualSaEnabled(Z)V
.end method

.method public abstract setEsimState(I)I
.end method

.method public abstract setIccCardActivate(IZ)V
.end method

.method public abstract setMobileNetworkCapability(Ljava/lang/String;)V
.end method

.method public abstract setUserFiveGEnabled(Z)V
.end method

.method public abstract setUserFiveGEnabled(ZI)V
.end method

.method public abstract setUserFiveGSaEnabled(Z)V
.end method

.method public abstract setUserFiveGSaEnabled(ZI)V
.end method

.method public abstract setUserNrCAEnabled(II)V
.end method

.method public abstract setUserVoNREnabled(IZ)V
.end method
