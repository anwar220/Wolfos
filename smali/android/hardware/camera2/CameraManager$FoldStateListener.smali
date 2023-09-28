# classes.dex

.class final Landroid/hardware/camera2/CameraManager$FoldStateListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FoldStateListener"
.end annotation


# instance fields
.field private final mFoldedDeviceStates:[I

.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070066

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    return-void
.end method

.method private handleStateChange(I)V
    .registers 8

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmLock(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v2, v0}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fputmFoldedDeviceState(Landroid/hardware/camera2/CameraManager;Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmDeviceStateListeners(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    if-eqz v5, :cond_39

    invoke-interface {v5, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    goto :goto_3c

    :cond_39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3c
    goto :goto_21

    :cond_3d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->-$$Nest$fgetmDeviceStateListeners(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_4c
    monitor-exit v1

    return-void

    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_d .. :try_end_50} :catchall_4e

    throw v2
.end method


# virtual methods
.method public final onBaseStateChanged(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    return-void
.end method

.method public final onStateChanged(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    return-void
.end method
