# classes3.dex

.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/SurfaceSyncer$SyncTarget;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView;

.field public final synthetic f$1:[Landroid/view/SurfaceHolder$Callback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;->f$0:Landroid/view/SurfaceView;

    iput-object p2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;->f$1:[Landroid/view/SurfaceHolder$Callback;

    iput p3, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onReadyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;->f$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;->f$1:[Landroid/view/SurfaceHolder$Callback;

    iget v2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/SurfaceView;->lambda$handleSyncNoBuffer$4$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;ILandroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-void
.end method
