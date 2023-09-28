# classes3.dex

.class public Landroid/telephony/TelephonyBaseUtilsStub;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyBaseUtilsStub"

.field private static volatile sInstance:Landroid/telephony/ITelephonyBaseUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v0, "android.telephony.TelephonyBaseUtilsImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ITelephonyBaseUtils;

    sput-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v0

    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telephony/TelephonyBaseUtilsStub;->logi(Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .registers 4

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/ITelephonyBaseUtils;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    :cond_9
    return-void
.end method

.method public static canShowPrivateInfo()Z
    .registers 1

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->canShowPrivateInfo()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static cellIdentityCdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityCdma;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityCdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityCdma;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static cellIdentityGsmToString(Ljava/lang/String;Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityGsmToString(Ljava/lang/String;Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static cellIdentityLteToString(Ljava/lang/String;Landroid/telephony/CellIdentityLte;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityLteToString(Ljava/lang/String;Landroid/telephony/CellIdentityLte;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static cellIdentityNrToString(Ljava/lang/String;Landroid/telephony/CellIdentityNr;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityNrToString(Ljava/lang/String;Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static cellIdentityWcdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityWcdma;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityWcdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityWcdma;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static checkCallingOrSelfPermissionGranted(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->checkCallingOrSelfPermissionGranted(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static dataCallResponseToString(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .registers 6
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

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/ITelephonyBaseUtils;->dataCallResponseToString(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gateways="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z
    .registers 12

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_10

    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/telephony/ITelephonyBaseUtils;->delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    return-object p1
.end method

.method public static getEndcStatus()I
    .registers 2

    const/4 v0, 0x0

    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v1}, Landroid/telephony/ITelephonyBaseUtils;->getEndcStatus()I

    move-result v0

    :cond_b
    return v0
.end method

.method public static getRestrictDcnrStatus()I
    .registers 2

    const/4 v0, 0x1

    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v1}, Landroid/telephony/ITelephonyBaseUtils;->getRestrictDcnrStatus()I

    move-result v0

    :cond_b
    return v0
.end method

.method public static hidePrivateInfoToStar(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->hidePrivateInfoToStar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    return-object p0
.end method

.method public static isCustSingleSimDevice()Z
    .registers 1

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isCustSingleSimDevice()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isDsdaSupported()Z
    .registers 1

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isDsdaSupported()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isGoogleCspRom()Z
    .registers 1

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isGoogleCspRom()Z

    move-result v0

    return v0
.end method

.method public static isIgnoreSmsStorageApplication(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->isIgnoreSmsStorageApplication(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isMiuiRom()Z
    .registers 1

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isMiuiRom()Z

    move-result v0

    return v0
.end method

.method public static isPseudoDsda()Z
    .registers 1

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isPseudoDsda()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportWechatAndCallCoexist()Z
    .registers 1

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isSupportWechatAndCallCoexist()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 2

    const-string v0, "TelephonyBaseUtilsStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static neighboringCellInfoToString(Landroid/telephony/NeighboringCellInfo;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->neighboringCellInfoToString(Landroid/telephony/NeighboringCellInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static putPhoneIdExtra(Landroid/content/Intent;I)V
    .registers 3

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->putPhoneIdExtra(Landroid/content/Intent;I)V

    :cond_9
    return-void
.end method

.method public static putPostCarrierConfigForMiui(Landroid/os/PersistableBundle;)V
    .registers 2

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->putPostCarrierConfigForMiui(Landroid/os/PersistableBundle;)V

    :cond_9
    return-void
.end method

.method public static putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
    .registers 5

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/telephony/ITelephonyBaseUtils;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    :cond_9
    return-void
.end method

.method public static removeApnFromPermanentFailureSet(ILjava/util/Set;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/ITelephonyBaseUtils;->removeApnFromPermanentFailureSet(ILjava/util/Set;I)V

    :cond_9
    return-void
.end method

.method public static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    return-object p0
.end method
