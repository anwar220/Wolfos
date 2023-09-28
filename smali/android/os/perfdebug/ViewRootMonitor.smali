# classes3.dex

.class public Landroid/os/perfdebug/ViewRootMonitor;
.super Ljava/lang/Object;


# static fields
.field public static final DRAW_MODE_HARDWARE:I = 0x1

.field public static final DRAW_MODE_SOFTWARE:I = 0x2

.field public static final DRAW_MODE_SURFACE:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newViewRootMonitor()Landroid/os/perfdebug/ViewRootMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/ViewRootMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ViewRootMonitor;

    return-object v0
.end method


# virtual methods
.method public monitorGlobalLayoutBegin()V
    .registers 1

    return-void
.end method

.method public monitorGlobalLayoutEnd()V
    .registers 1

    return-void
.end method

.method public monitorPerformDrawBegin()V
    .registers 1

    return-void
.end method

.method public monitorPerformDrawEnd()V
    .registers 1

    return-void
.end method

.method public monitorPerformLayoutBegin()V
    .registers 1

    return-void
.end method

.method public monitorPerformLayoutEnd()V
    .registers 1

    return-void
.end method

.method public monitorPerformMeasureBegin()V
    .registers 1

    return-void
.end method

.method public monitorPerformMeasureEnd()V
    .registers 1

    return-void
.end method

.method public monitorTraversalsBegin()V
    .registers 1

    return-void
.end method

.method public monitorTraversalsEnd()V
    .registers 1

    return-void
.end method

.method public monitorViewDrawBegin()V
    .registers 1

    return-void
.end method

.method public monitorViewDrawEnd()V
    .registers 1

    return-void
.end method

.method public monitorViewTreeDrawBegin()V
    .registers 1

    return-void
.end method

.method public monitorViewTreeDrawEnd()V
    .registers 1

    return-void
.end method

.method public monitorViewTreePreDrawBegin()V
    .registers 1

    return-void
.end method

.method public monitorViewTreePreDrawEnd()V
    .registers 1

    return-void
.end method

.method public onAppVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSurfaceCreate()V
    .registers 1

    return-void
.end method

.method public onSurfaceDestroy(Landroid/view/Surface;)V
    .registers 2

    return-void
.end method

.method public onWindowStoped(Landroid/view/ViewRootImpl;Z)V
    .registers 3

    return-void
.end method

.method public setDrawMode(I)V
    .registers 2

    return-void
.end method
