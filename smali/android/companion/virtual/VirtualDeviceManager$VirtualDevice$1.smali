# classes.dex

.class Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;
.super Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;


# direct methods
.method constructor <init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)V
    .registers 2

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayEmpty(I)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_5
    :try_start_5
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-static {v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-static {v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;

    invoke-virtual {v3, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->onDisplayEmpty(I)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onTopActivityChanged(ILandroid/content/ComponentName;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_5
    :try_start_5
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-static {v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-static {v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->onTopActivityChanged(ILandroid/content/ComponentName;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
