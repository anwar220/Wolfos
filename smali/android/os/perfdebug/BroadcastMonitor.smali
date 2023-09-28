# classes3.dex

.class public Landroid/os/perfdebug/BroadcastMonitor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBroadcastMonitor()Landroid/os/perfdebug/BroadcastMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/BroadcastMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/BroadcastMonitor;

    return-object v0
.end method


# virtual methods
.method public monitorReceiveBegin()V
    .registers 1

    return-void
.end method

.method public monitorReceiveEnd(ZLandroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    return-void
.end method
