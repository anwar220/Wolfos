# classes3.dex

.class public Landroid/telephony/MiuiSubscriptionManagerStub;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiuiTelephonyManagerStub"

.field private static volatile sInstance:Landroid/telephony/IMiuiSubscriptionManager;

.field private static subscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    :try_start_b
    const-string/jumbo v0, "miui.telephony.SubscriptionManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefault"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IMiuiSubscriptionManager;

    sput-object v2, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception v0

    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telephony/MiuiSubscriptionManagerStub;->logi(Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableSubscriptionsCache()V
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->disableSubscriptionsCache()V

    :cond_9
    return-void
.end method

.method public static enableSubscriptionsCache()V
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->enableSubscriptionsCache()V

    :cond_9
    return-void
.end method

.method public static getAllSubscriptionInfoCount()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static getDefaultDataSlotId()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultDataSubscriptionId()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getDefaultSlotId()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultSmsSlotId()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultSmsSlotId()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getDefaultSubscriptionId()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSlotId()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultVoiceSlotId()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubscriptionId()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getPhoneIdForSlot(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getPhoneIdForSubscription(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v0

    return v0

    :cond_b
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getSlotIdForPhone(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static getSlotIdForSubscription(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static getSubscriptionIdForSlot(I)I
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getSubscriptionInfoCount()I
    .registers 1

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getSubscriptionInfoCount()I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MiuiTelephonyManagerStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDefaultDataSubscriptionId(I)V
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultDataSubscriptionId(I)V

    :cond_9
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    return-void
.end method

.method public static setDefaultSmsSlotId(I)V
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultSmsSlotId(I)V

    :cond_9
    return-void
.end method

.method public static setDefaultSmsSubscriptionId(I)V
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultSmsSubscriptionId(I)V

    :cond_9
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    return-void
.end method

.method public static setDefaultVoiceSlotId(I)V
    .registers 3

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultVoiceSlotId(I)V

    :cond_9
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    return-void
.end method

.method public static setDefaultVoiceSubscriptionId(I)V
    .registers 2

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    :cond_9
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    return-void
.end method

.method public static setDisplayNameForSlot(Ljava/lang/String;I)I
    .registers 3

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiSubscriptionManager;->setDisplayNameForSlot(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static setDisplayNameForSubscription(Ljava/lang/String;I)I
    .registers 3

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiSubscriptionManager;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static setDisplayNumberForSlot(Ljava/lang/String;I)I
    .registers 4

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiSubscriptionManager;->setDisplayNumberForSlot(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setDisplayNumberForSubscription(Ljava/lang/String;I)I
    .registers 3

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiSubscriptionManager;->setDisplayNumberForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0, p1}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
