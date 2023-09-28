# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl$8;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/window/SurfaceSyncer$SyncBufferCallback;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl$8;JLandroid/window/SurfaceSyncer$SyncBufferCallback;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl$8;

    iput-wide p2, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$2:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iput-boolean p5, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onFrameCommit(Z)V
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl$8;

    iget-wide v1, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$2:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget-boolean v4, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;->f$3:Z

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$8;->lambda$onFrameDraw$0$android-view-ViewRootImpl$8(JLandroid/window/SurfaceSyncer$SyncBufferCallback;ZZ)V

    return-void
.end method
