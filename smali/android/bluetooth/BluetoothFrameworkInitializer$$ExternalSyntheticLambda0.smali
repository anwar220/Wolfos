# classes.dex

.class public final synthetic Landroid/bluetooth/BluetoothFrameworkInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/bluetooth/BluetoothFrameworkInitializer;->lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;

    move-result-object p1

    return-object p1
.end method
