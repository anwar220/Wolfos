# classes.dex

.class Landroid/app/ActivityOptions$5;
.super Landroid/os/IRemoteCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions;->setOnAnimationReneterStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityOptions;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$reenterStartCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Landroid/app/ActivityOptions$5;->this$0:Landroid/app/ActivityOptions;

    iput-object p2, p0, Landroid/app/ActivityOptions$5;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/app/ActivityOptions$5;->val$reenterStartCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityOptions$5;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityOptions$5$1;

    invoke-direct {v1, p0}, Landroid/app/ActivityOptions$5$1;-><init>(Landroid/app/ActivityOptions$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
