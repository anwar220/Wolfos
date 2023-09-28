# classes3.dex

.class public Landroid/telephony/MiuiTelephonyManagerStub;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiuiTelephonyManagerStub"

.field private static volatile sInstance:Landroid/telephony/IMiuiTelephonyManager;

.field private static sIsFiveGCapable:Z

.field private static scontext:Landroid/content/Context;

.field private static subscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->scontext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->scontext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string/jumbo v0, "ro.vendor.radio.5g"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    sput-boolean v0, Landroid/telephony/MiuiTelephonyManagerStub;->sIsFiveGCapable:Z

    :try_start_24
    const-string/jumbo v0, "miui.telephony.TelephonyManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IMiuiTelephonyManager;

    sput-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_40

    goto :goto_46

    :catch_40
    move-exception v0

    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telephony/MiuiTelephonyManagerStub;->logi(Ljava/lang/String;)V

    :goto_46
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallState()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getCallState()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public static getCallStateForSlot(I)I
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getCallStateForSlot(I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public static getCallStateForSubscription(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getCallStateForSubscription(I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public static getCellLocationForSlot(I)Landroid/telephony/CellLocation;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getCellLocationForSlot(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCtVolteSupportedMode()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getCtVolteSupportedMode()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getDataActivity()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDataActivity()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public static getDataActivityForSlot(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDataActivityForSlot(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getDataActivityForSubscription(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDataActivityForSubscription(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getDataState()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDataState()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public static getDataStateForSlot(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDataStateForSlot(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getDataStateForSubscription(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDataStateForSubscription(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIdForSlot(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIdForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceIdList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceIdList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getEsimGPIOState()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_8

    const v0, 0xffff

    goto :goto_e

    :cond_8
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getEsimGPIOState()I

    move-result v0

    :goto_e
    return v0
.end method

.method public static getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIccCardCount()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getIccCardCount()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getImei()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiForSlot(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiForSubscription(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getImeiForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getImeiList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLine1Number()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine1NumberForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getLine1NumberForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine1NumberForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMeid()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMeidForSlot(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMeidForSubscription(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMeidList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMiuiDeviceId()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiLevel(Landroid/telephony/SignalStrength;)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMiuiLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getMobileNetworkCapability(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMobileNetworkCapability(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNetworkCountryIso()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkCountryIsoForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkType()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public static getNetworkTypeForSlot(I)I
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkTypeForSlot(I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public static getNetworkTypeForSubscription(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public static getNrConfigType()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNrConfigType()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getNrConfigType(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNrConfigType(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getPhoneCount()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getPhoneCount()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getPhoneType()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getPhoneType()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getPhoneTypeForSlot(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getPhoneTypeForSubscription(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getProductEid()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getProductEid()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getSimCountryIso()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimCountryIsoForSlot(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimCountryIsoForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperator()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperatorForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperatorForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperatorName()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperatorNameForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSerialNumber()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSerialNumberForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimState()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimState()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public static getSimStateForSlot(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimStateForSlot(I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSimStateForSubscription(I)I
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimStateForSubscription(I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSmallDeviceId()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSmallDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 5

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/telephony/IMiuiTelephonyManager;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    return-object p2
.end method

.method public static getSubscriberId()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriberIdForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriberIdForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailNumber()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailNumberForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXMNetworkType()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getXMNetworkType()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getXMNetworkType(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getXMNetworkType(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static hasIccCard()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->hasIccCard()Z

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static hasIccCard(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public static isBuildRegionForTaiWan()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isRegionForTaiWan()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isChinaTelecomTest(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isChinaTelecomTest(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isCmccCooperationDevice()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isCmccCooperationDevice()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isCustForKrOps()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isMiuiCustForKrOps()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisableLte(Z)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isDisableLte(Z)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualNrEnabled()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualNrEnabled()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualNrSupported()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualNrSupported()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualSaEnabled()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualSaEnabled()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualSaSupported()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualSaSupported()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualVolteSupported()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualVolteSupported()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isEsimActive()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isEsimActive()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static isFeatureDisabledByCloud(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isFeatureDisabledByCloud(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isFeatureEnabledByCloud(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isFeatureEnabledByCloud(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isFiveGCapable()Z
    .registers 1

    sget-boolean v0, Landroid/telephony/MiuiTelephonyManagerStub;->sIsFiveGCapable:Z

    return v0
.end method

.method public static isGameFiveGOptimizeSupported()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isGameFiveGOptimizeSupported()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isGwsdSupport()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isGwsdSupport()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isImsRegistered(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isImsRegistered(I)Z

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v0

    return v0
.end method

.method public static isMultiSimEnabled()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static isNrCAEnabled(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isNrCAEnabled(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isNrCaSupported()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isNrCaSupported()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportEsimForCountry(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isSupportEsimForCountry(Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static isUserFiveGEnabled()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isUserFiveGEnabled()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isUserFiveGEnabled(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isUserFiveGEnabled(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isUserFiveGSaEnabled()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isUserFiveGSaEnabled()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isUserFiveGSaEnabled(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isUserFiveGSaEnabled(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoTelephonyAvailable(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isVideoTelephonyAvailable(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoNRSupported()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVoNRSupported()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoiceCapable()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public static isVolteEnabledByPlatform()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVolteEnabledByPlatform()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVolteEnabledByPlatform(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVolteEnabledByPlatform()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVolteEnabledByUser()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVolteEnabledByUser()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVolteEnabledByUser(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isVolteEnabledByUser(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVtEnabledByPlatform()Z
    .registers 1

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVtEnabledByPlatform()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVtEnabledByPlatform(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isVtEnabledByPlatform(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isWifiCallingAvailable(I)Z
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isWifiCallingAvailable(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_9
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .registers 4

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/IMiuiTelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    :cond_9
    return-void
.end method

.method public static listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .registers 4

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/IMiuiTelephonyManager;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    :cond_9
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MiuiTelephonyManagerStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 12

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_e

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/telephony/IMiuiTelephonyManager;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V

    :cond_e
    return-void
.end method

.method public static setEsimState(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_8

    const v0, 0xffff

    goto :goto_e

    :cond_8
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->setEsimState(I)I

    move-result v0

    :goto_e
    return v0
.end method

.method public static setIccCardActivate(IZ)V
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setIccCardActivate(IZ)V

    :cond_9
    return-void
.end method

.method public static setMobileNetworkCapability(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->setMobileNetworkCapability(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static setUserFiveGEnabled(Z)V
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->setUserFiveGEnabled(Z)V

    :cond_9
    return-void
.end method

.method public static setUserFiveGEnabled(ZI)V
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setUserFiveGEnabled(ZI)V

    :cond_9
    return-void
.end method

.method public static setUserFiveGSaEnabled(Z)V
    .registers 2

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->setUserFiveGSaEnabled(Z)V

    :cond_9
    return-void
.end method

.method public static setUserFiveGSaEnabled(ZI)V
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setUserFiveGSaEnabled(ZI)V

    :cond_9
    return-void
.end method

.method public static setUserNrCAEnabled(II)V
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setUserNrCAEnabled(II)V

    :cond_9
    return-void
.end method


# virtual methods
.method public setCrbtDisable(Z)V
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setCrbtDisable(Z)V

    :cond_9
    return-void
.end method

.method public setDualSaEnabled(Z)V
    .registers 3

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setDualSaEnabled(Z)V

    :cond_9
    return-void
.end method
