# classes3.dex

.class public final synthetic Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

.field public final synthetic f$1:Landroid/os/storage/StorageVolume;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iput-object p2, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$1:Landroid/os/storage/StorageVolume;

    iput-object p3, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iget-object v1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$1:Landroid/os/storage/StorageVolume;

    iget-object v2, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$3:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$notifyVolumeStateChanged$1$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method
