# classes3.dex

.class Landroid/view/ViewRootImpl$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/SurfaceSyncer$SyncTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSyncComplete$0$android-view-ViewRootImpl$9()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmNumSyncsInProgress(Landroid/view/ViewRootImpl;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$fputmNumSyncsInProgress(Landroid/view/ViewRootImpl;I)V

    if-nez v1, :cond_18

    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_18

    invoke-static {v2}, Landroid/graphics/HardwareRenderer;->setRtAnimationsEnabled(Z)V

    :cond_18
    return-void
.end method

.method public onReadyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mreadyToSync(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-void
.end method

.method public onSyncComplete()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$9;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
