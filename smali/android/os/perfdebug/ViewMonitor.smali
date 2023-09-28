# classes3.dex

.class public Landroid/os/perfdebug/ViewMonitor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/os/perfdebug/ViewMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/ViewMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ViewMonitor;

    return-object v0
.end method


# virtual methods
.method public markDrawBegin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public markDrawEnd()V
    .registers 1

    return-void
.end method

.method public markLayoutBegin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public markLayoutEnd()V
    .registers 1

    return-void
.end method

.method public markMeasureBegin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public markMeasureEnd()V
    .registers 1

    return-void
.end method

.method public markOnDrawBegin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public markOnDrawEnd()V
    .registers 1

    return-void
.end method
