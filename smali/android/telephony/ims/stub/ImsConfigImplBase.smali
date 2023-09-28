# classes3.dex

.class public Landroid/telephony/ims/stub/ImsConfigImplBase;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsConfigImplBase$SetConfigResult;,
        Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    }
.end annotation


# static fields
.field public static final CONFIG_RESULT_FAILED:I = 0x1

.field public static final CONFIG_RESULT_SUCCESS:I = 0x0

.field public static final CONFIG_RESULT_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field private final mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

.field private final mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IRcsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsConfigData:[B


# direct methods
.method static bridge synthetic -$$Nest$maddImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNotifyRcsAutoConfigurationReceived(Landroid/telephony/ims/stub/ImsConfigImplBase;[BZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationReceived([BZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNotifyRcsAutoConfigurationRemoved(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationRemoved()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method

.method private addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method private addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    if-eqz v0, :cond_15

    :try_start_9
    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder to call onConfigurationChanged, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method static synthetic lambda$notifyAutoConfigurationErrorReceived$4(ILjava/lang/String;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 6

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyAutoConfigurationErrorReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void
.end method

.method static synthetic lambda$notifyConfigChanged$0(IILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 6

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onIntConfigChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(int): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method static synthetic lambda$notifyConfigChanged$1(ILjava/lang/String;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 6

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onStringConfigChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(string): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method static synthetic lambda$notifyPreProvisioningReceived$5([BLandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 5

    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onPreProvisioningReceived([B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyPreProvisioningReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void
.end method

.method static synthetic lambda$onNotifyRcsAutoConfigurationRemoved$3(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 4

    :try_start_0
    invoke-interface {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationReset()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationRemoved, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void
.end method

.method private final notifyConfigChanged(II)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_5

    return-void

    :cond_5
    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private notifyConfigChanged(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_5

    return-void

    :cond_5
    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private onNotifyRcsAutoConfigurationReceived([BZ)V
    .registers 6

    if-eqz p2, :cond_7

    invoke-static {p1}, Landroid/telephony/ims/RcsConfig;->decompressGzip([B)[B

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    move-object p1, v0

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v0, :cond_28

    monitor-enter v0

    :try_start_19
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    throw v1

    :cond_28
    :goto_28
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationReceived([BZ)V

    return-void
.end method

.method private onNotifyRcsAutoConfigurationRemoved()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v0, :cond_17

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationRemoved()V

    return-void
.end method

.method private removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method


# virtual methods
.method public getConfigInt(I)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method synthetic lambda$onNotifyRcsAutoConfigurationReceived$2$android-telephony-ims-stub-ImsConfigImplBase(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method

.method public final notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_5

    return-void

    :cond_5
    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final notifyPreProvisioningReceived([B)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_5

    return-void

    :cond_5
    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final notifyProvisionedValueChanged(II)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(II)V

    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(int): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

.method public final notifyProvisionedValueChanged(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(string): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

.method public notifyRcsAutoConfigurationReceived([BZ)V
    .registers 3

    return-void
.end method

.method public notifyRcsAutoConfigurationRemoved()V
    .registers 1

    return-void
.end method

.method public setConfig(II)I
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public final setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fputmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/Executor;)V

    :cond_d
    return-void
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .registers 2

    return-void
.end method

.method public triggerAutoConfiguration()V
    .registers 1

    return-void
.end method

.method public updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .registers 2

    return-void
.end method
