# classes3.dex

.class public final Landroid/telephony/TelephonyScanManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyScanManager$NetworkScanInfo;,
        Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_RESTRICTED_SCAN_RESULTS:I = 0x4

.field public static final CALLBACK_SCAN_COMPLETE:I = 0x3

.field public static final CALLBACK_SCAN_ERROR:I = 0x2

.field public static final CALLBACK_SCAN_RESULTS:I = 0x1

.field public static final CALLBACK_TELEPHONY_DIED:I = 0x5

.field public static final INVALID_SCAN_ID:I = -0x1

.field public static final SCAN_RESULT_KEY:Ljava/lang/String; = "scanResult"

.field private static final TAG:Ljava/lang/String; = "TelephonyScanManager"


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mScanInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyScanManager$NetworkScanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/telephony/TelephonyScanManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TelephonyScanManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mLooper:Landroid/os/Looper;

    new-instance v2, Landroid/telephony/TelephonyScanManager$1;

    invoke-direct {v2, p0, v1}, Landroid/telephony/TelephonyScanManager$1;-><init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    new-instance v1, Landroid/telephony/TelephonyScanManager$2;

    invoke-direct {v1, p0}, Landroid/telephony/TelephonyScanManager$2;-><init>(Landroid/telephony/TelephonyScanManager;)V

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private saveScanInfo(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    new-instance v1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;-><init>(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/NetworkScan;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v13, 0x0

    :try_start_9
    const-string v0, "Request was null"

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback was null"

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor was null"

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Landroid/telephony/TelephonyScanManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v14, v0

    if-nez v14, :cond_20

    return-object v13

    :cond_20
    iget-object v15, v1, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    monitor-enter v15
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_23} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_23} :catch_66

    :try_start_23
    iget-object v6, v1, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    move-object v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/ITelephony;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_45

    const-string v2, "TelephonyScanManager"

    const-string v3, "Failed to initiate network scan"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    return-object v13

    :cond_45
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Landroid/telephony/TelephonyScanManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-direct {v1, v0, v10, v11, v12}, Landroid/telephony/TelephonyScanManager;->saveScanInfo(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    new-instance v2, Landroid/telephony/NetworkScan;
    :try_end_54
    .catchall {:try_start_23 .. :try_end_54} :catchall_5b

    move/from16 v3, p1

    :try_start_56
    invoke-direct {v2, v0, v3}, Landroid/telephony/NetworkScan;-><init>(II)V

    monitor-exit v15

    return-object v2

    :catchall_5b
    move-exception v0

    move/from16 v3, p1

    :goto_5e
    monitor-exit v15
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_64

    :try_start_5f
    throw v0
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_60} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    goto :goto_69

    :catch_62
    move-exception v0

    goto :goto_75

    :catchall_64
    move-exception v0

    goto :goto_5e

    :catch_66
    move-exception v0

    move/from16 v3, p1

    :goto_69
    const-string v2, "TelephonyScanManager"

    const-string/jumbo v4, "requestNetworkScan NPE"

    invoke-static {v2, v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    :catch_72
    move-exception v0

    move/from16 v3, p1

    :goto_75
    const-string v2, "TelephonyScanManager"

    const-string/jumbo v4, "requestNetworkScan RemoteException"

    invoke-static {v2, v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_7e
    return-object v13
.end method
