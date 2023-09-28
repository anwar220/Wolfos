# classes.dex

.class public Landroid/bluetooth/BluetoothFrameworkInitializer;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile sBinderCallsStatsInitializer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBluetoothServiceManager()Landroid/os/BluetoothServiceManager;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    return-object v0
.end method

.method public static initializeBinderCallsStats(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_a

    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sBinderCallsStatsInitializer has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;
    .registers 2

    new-instance v0, Landroid/bluetooth/BluetoothManager;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static registerServiceWrappers()V
    .registers 3

    const-class v0, Landroid/bluetooth/BluetoothManager;

    new-instance v1, Landroid/bluetooth/BluetoothFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "bluetooth"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    return-void
.end method

.method public static setBinderCallsStatsInitializer(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    if-nez v0, :cond_11

    if-eqz p0, :cond_9

    sput-object p0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "binderCallsStatsConsumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setBinderCallsStatsInitializer called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setBluetoothServiceManager(Landroid/os/BluetoothServiceManager;)V
    .registers 3

    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    if-nez v0, :cond_11

    if-eqz p0, :cond_9

    sput-object p0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bluetoothServiceManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setBluetoothServiceManager called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
