# classes2.dex

.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$SinkList;,
        Landroid/hardware/location/ActivityRecognitionHardware$Event;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

.field private static final EVENT_TYPE_COUNT:I = 0x3

.field private static final EVENT_TYPE_DISABLED:I = 0x0

.field private static final EVENT_TYPE_ENABLED:I = 0x1

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionHW"

.field private static sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

.field private final mSupportedActivities:[Ljava/lang/String;

.field private final mSupportedActivitiesCount:I

.field private final mSupportedActivitiesEnabledEvents:[[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmSinks(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportedActivitiesCount(Landroid/hardware/location/ActivityRecognitionHardware;)I
    .registers 1

    iget p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportedActivitiesEnabledEvents(Landroid/hardware/location/ActivityRecognitionHardware;)[[I
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnativeDisableActivityEvent(Landroid/hardware/location/ActivityRecognitionHardware;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ActivityRecognitionHW"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$SinkList-IA;)V

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-void
.end method

.method private checkPermissions()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchSupportedActivities()[Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getActivityName(I)Ljava/lang/String;
    .registers 5

    if-ltz p1, :cond_b

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    :cond_8
    aget-object v0, v0, p1

    return-object v0

    :cond_b
    :goto_b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Invalid ActivityType: %d, SupportedActivities: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityRecognitionHW"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getActivityType(Ljava/lang/String;)I
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    return v2

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .registers 3

    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-nez v1, :cond_e

    new-instance v1, Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {v1, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    :cond_e
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static isSupported()Z
    .registers 1

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDisableActivityEvent(II)I
.end method

.method private native nativeEnableActivityEvent(IIJ)I
.end method

.method private native nativeFlush()I
.end method

.method private native nativeGetSupportedActivities()[Ljava/lang/String;
.end method

.method private native nativeInitialize()V
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeRelease()V
.end method

.method private onActivityChanged([Landroid/hardware/location/ActivityRecognitionHardware$Event;)V
    .registers 12

    const-string v0, "ActivityRecognitionHW"

    if-eqz p1, :cond_4d

    array-length v1, p1

    if-nez v1, :cond_8

    goto :goto_4d

    :cond_8
    array-length v1, p1

    new-array v2, v1, [Landroid/hardware/location/ActivityRecognitionEvent;

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_24

    aget-object v4, p1, v3

    iget v5, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    invoke-direct {p0, v5}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/hardware/location/ActivityRecognitionEvent;

    iget v7, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    iget-wide v8, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    invoke-direct {v6, v5, v7, v8, v9}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_24
    new-instance v3, Landroid/hardware/location/ActivityChangedEvent;

    invoke-direct {v3, v2}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    iget-object v4, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v4}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->beginBroadcast()I

    move-result v4

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v4, :cond_47

    iget-object v6, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v6, v5}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    :try_start_3a
    invoke-interface {v6, v3}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_44

    :catch_3e
    move-exception v7

    const-string v8, "Error delivering activity changed event."

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_47
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->finishBroadcast()V

    return-void

    :cond_4d
    :goto_4d
    sget-boolean v1, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    if-eqz v1, :cond_56

    const-string v1, "No events to broadcast for onActivityChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-void
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .registers 7

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    return v1

    :cond_c
    invoke-direct {p0, v0, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result v2

    if-nez v2, :cond_1a

    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object v3, v3, v0

    aput v1, v3, p2

    const/4 v1, 0x1

    return v1

    :cond_1a
    return v1
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .registers 9

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    return v1

    :cond_c
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    move-result v2

    if-nez v2, :cond_1a

    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object v1, v1, v0

    const/4 v3, 0x1

    aput v3, v1, p2

    return v3

    :cond_1a
    return v1
.end method

.method public flush()Z
    .registers 3

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
