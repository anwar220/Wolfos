# classes3.dex

.class Landroid/os/ResultReceiver$MyResultReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;)V
    .registers 2

    iput-object p1, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    iget-object v0, v0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    iget-object v0, v0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/ResultReceiver$MyRunnable;

    iget-object v2, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {v1, v2, p1, p2}, Landroid/os/ResultReceiver$MyRunnable;-><init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    :cond_15
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    :goto_1a
    return-void
.end method