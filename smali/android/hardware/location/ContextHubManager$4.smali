# classes2.dex

.class Landroid/hardware/location/ContextHubManager$4;
.super Landroid/hardware/location/IContextHubCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ContextHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onMessageReceipt$0$android-hardware-location-ContextHubManager$4(IILandroid/hardware/location/ContextHubMessage;)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->-$$Nest$minvokeOnMessageReceiptCallback(Landroid/hardware/location/ContextHubManager;IILandroid/hardware/location/ContextHubMessage;)V

    return-void
.end method

.method public onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->-$$Nest$fgetmCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->-$$Nest$fgetmCallbackHandler(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/location/ContextHubManager$4;IILandroid/hardware/location/ContextHubMessage;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b

    :cond_1a
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->-$$Nest$fgetmLocalCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$4;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->-$$Nest$fgetmLocalCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$ICallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V

    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method
