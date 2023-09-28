# classes3.dex

.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactionHang(Z)V
    .registers 4

    if-eqz p1, :cond_17

    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetsAnrReported()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$sfputsAnrReported(Z)V

    :try_start_c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "Buffer processing hung up due to stuck fence. Indicates GPU hang"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->appNotResponding(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v0

    :cond_17
    :goto_17
    return-void
.end method
