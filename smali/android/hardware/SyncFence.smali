# classes.dex

.class public final Landroid/hardware/SyncFence;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/SyncFence;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNAL_TIME_INVALID:J = -0x1L

.field public static final SIGNAL_TIME_PENDING:J = 0x7fffffffffffffffL

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final mCloser:Ljava/lang/Runnable;

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-class v0, Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/hardware/SyncFence;->nGetDestructor()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Landroid/hardware/SyncFence$1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$1;-><init>()V

    sput-object v0, Landroid/hardware/SyncFence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_14

    sget-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_1b

    :cond_14
    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    :goto_1b
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    :cond_e
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    sget-object v4, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v4, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_2a

    :cond_23
    new-instance v2, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;-><init>()V

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    :goto_2a
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/SyncFence-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/SyncFence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    sget-object v2, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-void
.end method

.method private await(J)Z
    .registers 8

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    invoke-static {v1, v2, p1, p2}, Landroid/hardware/SyncFence;->nWait(JJ)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;
    .registers 2

    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p0}, Landroid/hardware/SyncFence;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public static createEmpty()Landroid/hardware/SyncFence;
    .registers 1

    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0}, Landroid/hardware/SyncFence;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$0()V
    .registers 0

    return-void
.end method

.method static synthetic lambda$new$1()V
    .registers 0

    return-void
.end method

.method static synthetic lambda$new$2()V
    .registers 0

    return-void
.end method

.method private static native nCreate(I)J
.end method

.method private static native nGetDestructor()J
.end method

.method private static native nGetFd(J)I
.end method

.method private static native nGetSignalTime(J)J
.end method

.method private static native nIsValid(J)Z
.end method

.method private static native nWait(JJ)Z
.end method


# virtual methods
.method public await(Ljava/time/Duration;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    :goto_d
    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v2

    return v2
.end method

.method public awaitForever()Z
    .registers 3

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v0

    return v0
.end method

.method public close()V
    .registers 6

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iput-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    iget-object v1, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getFdDup()Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, -0x1

    if-eqz v3, :cond_11

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v4

    :goto_12
    if-eq v1, v4, :cond_1a

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot dup the FD of an invalid SyncFence"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getNativeFence()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    return-wide v0
.end method

.method public getSignalTime()J
    .registers 6

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_10

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetSignalTime(J)J

    move-result-wide v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, -0x1

    :goto_12
    monitor-exit v0

    return-wide v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isValid()Z
    .registers 6

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nIsValid(J)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, -0x1

    if-eqz v3, :cond_11

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v4

    :goto_12
    if-ne v1, v4, :cond_19

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_28

    :cond_19
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method
