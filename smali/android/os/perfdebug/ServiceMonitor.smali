# classes3.dex

.class public Landroid/os/perfdebug/ServiceMonitor;
.super Ljava/lang/Object;


# static fields
.field public static final SERVICE_START_TYPE_BIND:I = 0x2

.field public static final SERVICE_START_TYPE_CREATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newServiceMonitor()Landroid/os/perfdebug/ServiceMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/ServiceMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ServiceMonitor;

    return-object v0
.end method


# virtual methods
.method public monitorCreateBegin(I)V
    .registers 2

    return-void
.end method

.method public monitorCreateEnd(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method
