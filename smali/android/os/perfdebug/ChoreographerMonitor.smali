# classes3.dex

.class public Landroid/os/perfdebug/ChoreographerMonitor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newChoreographerMonitor()Landroid/os/perfdebug/ChoreographerMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ChoreographerMonitor;

    return-object v0
.end method


# virtual methods
.method public monitorCallbackExecuteBegin(ILjava/lang/Object;J)V
    .registers 5

    return-void
.end method

.method public monitorCallbackExecuteEnd()V
    .registers 1

    return-void
.end method

.method public monitorDoFrameBegin()V
    .registers 1

    return-void
.end method

.method public monitorDoFrameEnd()V
    .registers 1

    return-void
.end method
