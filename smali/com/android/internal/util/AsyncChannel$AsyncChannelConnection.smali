# classes4.dex

.class Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncChannelConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/util/AsyncChannel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->-$$Nest$fputmDstMessenger(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->-$$Nest$mreplyHalfConnected(Lcom/android/internal/util/AsyncChannel;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->-$$Nest$mreplyDisconnected(Lcom/android/internal/util/AsyncChannel;I)V

    return-void
.end method