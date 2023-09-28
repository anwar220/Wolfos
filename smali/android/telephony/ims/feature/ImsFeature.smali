# classes3.dex

.class public abstract Landroid/telephony/ims/feature/ImsFeature;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ImsFeature$Capabilities;,
        Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;,
        Landroid/telephony/ims/feature/ImsFeature$ImsCapabilityError;,
        Landroid/telephony/ims/feature/ImsFeature$ImsState;,
        Landroid/telephony/ims/feature/ImsFeature$FeatureType;
    }
.end annotation


# static fields
.field public static final CAPABILITY_ERROR_GENERIC:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_EMERGENCY_MMTEL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_INVALID:I = -0x1

.field public static final FEATURE_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEATURE_MAX:I = 0x3

.field public static final FEATURE_MMTEL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_RCS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final STATE_INITIALIZING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_READY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_UNAVAILABLE:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field protected mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field private mSlotId:I

.field private mState:I

.field private final mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$1;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$2;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$2;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    return-void
.end method

.method static synthetic lambda$notifyCapabilitiesStatusChanged$1(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6

    const-string v0, "ImsFeature"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsFeature notifyCapabilitiesStatusChanged Capabilities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onCapabilitiesStatusChanged(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_37

    :catch_20
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyCapabilitiesStatusChanged() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method

.method static synthetic lambda$notifyFeatureState$0(ILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1d

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifyFeatureState() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method private notifyFeatureState(I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method public final addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    :try_start_5
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onCapabilitiesStatusChanged(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_2c

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCapabilityCallback: error accessing callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method

.method public addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_2a

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t notify feature state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public abstract changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end method

.method protected abstract getBinder()Landroid/os/IInterface;
.end method

.method public getFeatureState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getSlotIndex()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return v0
.end method

.method public initialize(Landroid/content/Context;I)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return-void
.end method

.method protected final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v0

    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public abstract onFeatureReady()V
.end method

.method public abstract onFeatureRemoved()V
.end method

.method public abstract queryCapabilityConfiguration(II)Z
.end method

.method final queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 8

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityConfiguration(II)Z

    move-result v0

    if-eqz p3, :cond_14

    :try_start_6
    invoke-interface {p3, p1, p2, v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onQueryCapabilityConfiguration(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    move-exception v1

    const-string v2, "ImsFeature"

    const-string/jumbo v3, "queryCapabilityConfigurationInternal called on dead binder!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_14
    :goto_14
    nop

    :goto_15
    return-void
.end method

.method public queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method final removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5

    if-eqz p1, :cond_b

    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-direct {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;-><init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/feature/ImsFeature;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsFeature#requestChangeEnabledCapabilities called with invalid params."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setFeatureState(I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    if-eq v2, p1, :cond_b

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    const/4 v0, 0x1

    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureState(I)V

    :cond_11
    return-void

    :catchall_12
    move-exception v2

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v2
.end method
