# classes3.dex

.class public final synthetic Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    invoke-static {v0, p1, p2}, Landroid/view/ViewRootInsetsControllerHost;->lambda$releaseSurfaceControlFromRt$0(Landroid/view/SurfaceControl;J)V

    return-void
.end method
