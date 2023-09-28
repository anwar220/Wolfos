# classes3.dex

.class public abstract Landroid/service/storage/ExternalStorageService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;,
        Landroid/service/storage/ExternalStorageService$SessionFlag;
    }
.end annotation


# static fields
.field public static final EXTRA_ERROR:Ljava/lang/String; = "android.service.storage.extra.error"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.service.storage.extra.package_name"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "android.service.storage.extra.session_id"

.field public static final FLAG_SESSION_ATTRIBUTE_INDEXABLE:I = 0x2

.field public static final FLAG_SESSION_TYPE_FUSE:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.storage.ExternalStorageService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/storage/ExternalStorageService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;-><init>(Landroid/service/storage/ExternalStorageService;Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/service/storage/ExternalStorageService;->mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/storage/ExternalStorageService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAnrDelayStarted(Ljava/lang/String;III)V
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onAnrDelayStarted not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/service/storage/ExternalStorageService;->mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    return-object v0
.end method

.method public abstract onEndSession(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onFreeCache(Ljava/util/UUID;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onFreeCacheRequested not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onStartSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onVolumeStateChanged(Landroid/os/storage/StorageVolume;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
