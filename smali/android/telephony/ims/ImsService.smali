# classes3.dex

.class public Landroid/telephony/ims/ImsService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsService$Listener;,
        Landroid/telephony/ims/ImsService$ImsServiceCapability;
    }
.end annotation


# static fields
.field private static final CAPABILITIES_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPABILITY_EMERGENCY_OVER_MMTEL:J = 0x1L

.field public static final CAPABILITY_MAX_INDEX:J

.field public static final CAPABILITY_SIP_DELEGATE_CREATION:J = 0x2L

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.ImsService"


# instance fields
.field private final mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mImsServiceController:Landroid/os/IBinder;

.field private mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmListener(Landroid/telephony/ims/ImsService;Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEmergencyOnlyMmTelFeatureInternal(Landroid/telephony/ims/ImsService;I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->createEmergencyOnlyMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateMmTelFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createMmTelFeatureInternal(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createRcsFeatureInternal(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveImsFeature(Landroid/telephony/ims/ImsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->removeImsFeature(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImsFeatureCreatedForSlot(Landroid/telephony/ims/ImsService;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsanitizeCapabilities(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/ims/ImsService;->sanitizeCapabilities(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .registers 2

    nop

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/telephony/ims/ImsService;->CAPABILITY_MAX_INDEX:J

    new-instance v0, Landroid/telephony/ims/ImsService$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsService$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsService;->CAPABILITIES_LOG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/telephony/ims/ImsService$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2;-><init>(Landroid/telephony/ims/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_27

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_27
    return-void
.end method

.method private addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V
    .registers 7

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_18

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 9

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_27

    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not add ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    if-eqz v2, :cond_32

    invoke-virtual {v2, p3}, Landroid/telephony/ims/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private createEmergencyOnlyMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1

    :cond_14
    const-string v1, "ImsService"

    const-string v2, "createEmergencyOnlyMmTelFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private createMmTelFeatureInternal(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 6

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1

    :cond_14
    const-string v1, "ImsService"

    const-string v2, "createMmTelFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private createRcsFeatureInternal(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 6

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    return-object v1

    :cond_14
    const-string v1, "ImsService"

    const-string v2, "createRcsFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCapabilitiesString(J)Ljava/lang/String;
    .registers 15

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "capabilities={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    :goto_e
    and-long v5, p0, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_52

    const-wide/16 v5, 0x3f

    cmp-long v5, v3, v5

    if-gtz v5, :cond_52

    long-to-int v5, v3

    const-wide/16 v9, 0x1

    shl-long v5, v9, v5

    and-long v11, p0, v5

    cmp-long v7, v11, v7

    if-eqz v7, :cond_4e

    sget-object v7, Landroid/telephony/ims/ImsService;->CAPABILITIES_LOG_MAP:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    const/4 v7, 0x1

    shl-long/2addr v1, v7

    add-long/2addr v3, v9

    goto :goto_e

    :cond_52
    const-string/jumbo v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_15

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method private removeImsFeature(II)V
    .registers 9

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_27

    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    if-nez v2, :cond_53

    const-string v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exists on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_53
    invoke-virtual {v2}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 9

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_27

    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    if-eqz v2, :cond_32

    invoke-virtual {v2, p3}, Landroid/telephony/ims/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private static sanitizeCapabilities(J)J
    .registers 8

    const-wide/16 v0, -0x1

    sget-wide v2, Landroid/telephony/ims/ImsService;->CAPABILITY_MAX_INDEX:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v2, v2

    shl-long/2addr v0, v2

    not-long v2, v0

    and-long/2addr p0, v2

    const-wide/16 v2, -0x2

    and-long/2addr p0, v2

    return-wide p0
.end method

.method private setImsFeatureCreatedForSlot(IIZ)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V
    .registers 4

    invoke-virtual {p1, p0, p2}, Landroid/telephony/ims/feature/ImsFeature;->initialize(Landroid/content/Context;I)V

    invoke-direct {p0, p2, p3, p1}, Landroid/telephony/ims/ImsService;->addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V

    return-void
.end method


# virtual methods
.method public createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public disableIms(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public disableImsForSubscription(II)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->disableIms(I)V

    return-void
.end method

.method public enableIms(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public enableImsForSubscription(II)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->enableIms(I)V

    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    return-object v0
.end method

.method public getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_10

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_10
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getImsServiceCapabilities()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    return-object v0
.end method

.method public getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    return-object v0
.end method

.method public getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public isImsFeatureCreatedForSlot(II)Z
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.ims.ImsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ImsService"

    const-string v1, "ImsService Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsServiceControllerListener;->onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framework is not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .registers 2

    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;-><init>()V

    return-object v0
.end method

.method public readyForFeatureCreation()V
    .registers 1

    return-void
.end method
