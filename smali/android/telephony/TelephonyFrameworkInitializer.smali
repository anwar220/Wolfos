# classes3.dex

.class public Landroid/telephony/TelephonyFrameworkInitializer;
.super Ljava/lang/Object;


# static fields
.field private static volatile sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;
    .registers 1

    sget-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .registers 2

    new-instance v0, Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$2(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .registers 2

    new-instance v0, Landroid/telephony/CarrierConfigManager;

    invoke-direct {v0, p0}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$3(Landroid/content/Context;)Landroid/telephony/euicc/EuiccManager;
    .registers 2

    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$4(Landroid/content/Context;)Landroid/telephony/euicc/EuiccCardManager;
    .registers 2

    new-instance v0, Landroid/telephony/euicc/EuiccCardManager;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/EuiccCardManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$5(Landroid/content/Context;)Landroid/telephony/ims/ImsManager;
    .registers 2

    new-instance v0, Landroid/telephony/ims/ImsManager;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$6(Landroid/content/Context;)Landroid/telephony/SmsManager;
    .registers 2

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method public static registerServiceWrappers()V
    .registers 3

    const-class v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v2, "phone"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/SubscriptionManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/CarrierConfigManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "carrier_config"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "euicc"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/euicc/EuiccCardManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "euicc_card"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/ims/ImsManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda5;-><init>()V

    const-string/jumbo v2, "telephony_ims"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    const-class v0, Landroid/telephony/SmsManager;

    new-instance v1, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda6;-><init>()V

    const-string/jumbo v2, "sms"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    return-void
.end method

.method public static setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V
    .registers 3

    sget-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string/jumbo v1, "setTelephonyServiceManager called twice!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TelephonyServiceManager;

    sput-object v0, Landroid/telephony/TelephonyFrameworkInitializer;->sTelephonyServiceManager:Landroid/os/TelephonyServiceManager;

    return-void
.end method
