# classes3.dex

.class Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
.super Landroid/os/storage/IStorageEventListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageEventListenerDelegate"
.end annotation


# instance fields
.field final mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mListener:Landroid/os/storage/StorageEventListener;

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .registers 5

    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IStorageEventListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    iput-object p4, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    return-void
.end method


# virtual methods
.method synthetic lambda$onDiskDestroyed$6$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method synthetic lambda$onDiskScanned$5$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;I)V
    .registers 4

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method synthetic lambda$onStorageStateChanged$1$android-os-storage-StorageManager$StorageEventListenerDelegate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager$StorageVolumeCallback;->onStateChanged(Landroid/os/storage/StorageVolume;)V

    :cond_2c
    goto :goto_11

    :cond_2d
    return-void
.end method

.method synthetic lambda$onUsbMassStorageConnectionChanged$0$android-os-storage-StorageManager$StorageEventListenerDelegate(Z)V
    .registers 3

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onUsbMassStorageConnectionChanged(Z)V

    return-void
.end method

.method synthetic lambda$onVolumeForgotten$4$android-os-storage-StorageManager$StorageEventListenerDelegate(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onVolumeRecordChanged$3$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/VolumeRecord;)V
    .registers 3

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method synthetic lambda$onVolumeStateChanged$2$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/VolumeInfo;II)V
    .registers 9

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager$StorageVolumeCallback;->onStateChanged(Landroid/os/storage/StorageVolume;)V

    :cond_38
    goto :goto_19

    :cond_39
    return-void
.end method

.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 5

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda5;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 4

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeRecord;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 6

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda6;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeInfo;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
