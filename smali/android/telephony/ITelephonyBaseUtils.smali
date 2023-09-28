# classes3.dex

.class public interface abstract Landroid/telephony/ITelephonyBaseUtils;
.super Ljava/lang/Object;


# virtual methods
.method public abstract appendNonSeparator(Ljava/lang/StringBuilder;CI)V
.end method

.method public abstract canShowPrivateInfo()Z
.end method

.method public abstract cellIdentityCdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityCdma;)Ljava/lang/String;
.end method

.method public abstract cellIdentityGsmToString(Ljava/lang/String;Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;
.end method

.method public abstract cellIdentityLteToString(Ljava/lang/String;Landroid/telephony/CellIdentityLte;)Ljava/lang/String;
.end method

.method public abstract cellIdentityNrToString(Ljava/lang/String;Landroid/telephony/CellIdentityNr;)Ljava/lang/String;
.end method

.method public abstract cellIdentityWcdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityWcdma;)Ljava/lang/String;
.end method

.method public abstract checkCallingOrSelfPermissionGranted(I)Z
.end method

.method public abstract dataCallResponseToString(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z
.end method

.method public abstract getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEndcStatus()I
.end method

.method public abstract getRestrictDcnrStatus()I
.end method

.method public abstract hidePrivateInfoToStar(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isCustSingleSimDevice()Z
.end method

.method public abstract isDsdaSupported()Z
.end method

.method public abstract isGoogleCspRom()Z
.end method

.method public abstract isIgnoreSmsStorageApplication(Ljava/lang/String;)Z
.end method

.method public abstract isMiuiRom()Z
.end method

.method public abstract isPseudoDsda()Z
.end method

.method public abstract isSupportWechatAndCallCoexist()Z
.end method

.method public abstract neighboringCellInfoToString(Landroid/telephony/NeighboringCellInfo;)Ljava/lang/String;
.end method

.method public abstract putPhoneIdExtra(Landroid/content/Intent;I)V
.end method

.method public abstract putPostCarrierConfigForMiui(Landroid/os/PersistableBundle;)V
.end method

.method public abstract putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
.end method

.method public abstract removeApnFromPermanentFailureSet(ILjava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
.end method
