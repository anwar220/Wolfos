# classes3.dex

.class public Landroid/telephony/ims/ImsRcsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;,
        Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;,
        Landroid/telephony/ims/ImsRcsManager$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final ACTION_SHOW_CAPABILITY_DISCOVERY_OPT_IN:Ljava/lang/String; = "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

.field public static final CAPABILITY_TYPE_MAX:I = 0x3

.field public static final CAPABILITY_TYPE_NONE:I = 0x0

.field public static final CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1

.field public static final CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImsRcsManager"


# instance fields
.field private final mAvailabilityChangedCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;",
            "Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSubId:I

.field private final mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/telephony/ims/ImsRcsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    iput-object p4, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    return-void
.end method

.method private addAvailabilityChangedListenerToCollection(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    .registers 6

    new-instance v0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method private getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 3

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getRegistrationState$0(Ljava/util/function/Consumer;)V
    .registers 2

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getRegistrationTransportType$1(Ljava/util/function/Consumer;)V
    .registers 2

    nop

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private removeAvailabilityChangedListenerFromCollection(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method


# virtual methods
.method public addOnAvailabilityChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    if-eqz p2, :cond_4d

    if-eqz p1, :cond_45

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_38

    nop

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager;->addAvailabilityChangedListenerToCollection(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    move-result-object v3

    :try_start_12
    iget v4, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {v3}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_12 .. :try_end_1b} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1d

    nop

    return-void

    :catch_1d
    move-exception v4

    const-string v5, "Error calling IImsRcsController#registerRcsAvailabilityCallback"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v5, "Remote IMS Service is not available"

    invoke-direct {v2, v5, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catch_2b
    move-exception v1

    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_38
    const-string v3, "Add availability changed listener: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-nullOnAvailabilityChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4c

    if-eqz p1, :cond_44

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const-string v1, "ImsRcsManager"

    if-eqz v0, :cond_37

    :try_start_c
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$1;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_36

    :catch_17
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get registration state error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_36
    return-void

    :cond_37
    const-string v2, "Get registration state error: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null stateCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4c

    if-eqz p1, :cond_44

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const-string v1, "ImsRcsManager"

    if-eqz v0, :cond_37

    :try_start_c
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$2;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_36

    :catch_17
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get registration transport type error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_36
    return-void

    :cond_37
    const-string v2, "Get registration transport type error: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null transportTypeCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;
    .registers 4

    new-instance v0, Landroid/telephony/ims/RcsUceAdapter;

    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsUceAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public isAvailable(II)Z
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_1e

    :try_start_9
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, v3, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isAvailable(III)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    :catch_10
    move-exception v3

    const-string v4, "Error calling IImsRcsController#isAvailable"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1e
    const-string/jumbo v3, "isAvailable: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public isCapable(II)Z
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_1e

    :try_start_9
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, v3, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isCapable(III)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    :catch_10
    move-exception v3

    const-string v4, "Error calling IImsRcsController#isCapable"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1e
    const-string/jumbo v3, "isCapable: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    if-eqz p2, :cond_48

    if-eqz p1, :cond_40

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    invoke-virtual {p2, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    :try_start_e
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v2

    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    :catch_24
    move-exception v1

    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_31
    const-string v2, "ImsRcsManager"

    const-string v3, "Register registration callback: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {v0, p2, v1}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    :try_start_20
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_30} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_30} :catch_32

    nop

    return-void

    :catch_32
    move-exception v2

    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    :catch_3d
    move-exception v1

    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_4a
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public removeOnAvailabilityChangedListener(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_29

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    const-string v1, "ImsRcsManager"

    if-nez v0, :cond_10

    const-string v2, "Remove availability changed listener: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    nop

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsRcsManager;->removeAvailabilityChangedListenerFromCollection(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    move-result-object v2

    if-nez v2, :cond_18

    return-void

    :cond_18
    :try_start_18
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception v3

    const-string v4, "Error calling IImsRcsController#unregisterRcsAvailabilityCallback"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-nullOnAvailabilityChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 5

    if-eqz p1, :cond_28

    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_8
    iget v1, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_19
    const-string v1, "ImsRcsManager"

    const-string v2, "Unregister registration callback: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 4

    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_19

    :try_start_f
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_19

    :catch_17
    move-exception v1

    goto :goto_1a

    :cond_19
    :goto_19
    nop

    :goto_1a
    return-void
.end method
