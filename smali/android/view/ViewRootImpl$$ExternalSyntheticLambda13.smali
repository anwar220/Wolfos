# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;->f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;->f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->lambda$performDraw$9$android-view-ViewRootImpl(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-void
.end method
