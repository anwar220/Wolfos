# classes3.dex

.class public final Landroid/view/InputChannel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputChannel"

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/view/InputChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/view/InputChannel;->nativeGetFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/InputChannel;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Landroid/view/InputChannel$1;

    invoke-direct {v0}, Landroid/view/InputChannel$1;-><init>()V

    sput-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeDispose(J)V
.end method

.method private native nativeDup(J)J
.end method

.method private static native nativeGetFinalizer()J
.end method

.method private native nativeGetName(J)Ljava/lang/String;
.end method

.method private native nativeGetToken(J)Landroid/os/IBinder;
.end method

.method private static native nativeOpenInputChannelPair(Ljava/lang/String;)[J
.end method

.method private native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private native nativeWriteToParcel(Landroid/os/Parcel;J)V
.end method

.method public static openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;
    .registers 8

    if-eqz p0, :cond_1e

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/InputChannel;

    invoke-static {p0}, Landroid/view/InputChannel;->nativeOpenInputChannelPair(Ljava/lang/String;)[J

    move-result-object v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_1d

    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    aput-object v4, v1, v3

    aget-object v4, v1, v3

    aget-wide v5, v2, v3

    invoke-direct {v4, v5, v6}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1d
    return-object v1

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setNativeInputChannel(J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1c

    iget-wide v2, p0, Landroid/view/InputChannel;->mPtr:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/view/InputChannel;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    iput-wide p1, p0, Landroid/view/InputChannel;->mPtr:J

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Already has native input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to set native input channel to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copyTo(Landroid/view/InputChannel;)V
    .registers 6

    if-eqz p1, :cond_1c

    iget-wide v0, p1, Landroid/view/InputChannel;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeDup(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Other object already has a native input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outParameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .registers 3

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeDispose(J)V

    return-void
.end method

.method public dup()Landroid/view/InputChannel;
    .registers 4

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    iget-wide v1, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v1, v2}, Landroid/view/InputChannel;->nativeDup(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_d

    :cond_a
    const-string/jumbo v1, "uninitialized"

    :goto_d
    return-object v1
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 3

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeGetToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    if-eqz p1, :cond_10

    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    :cond_f
    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "in must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    if-eqz p1, :cond_f

    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InputChannel;->nativeWriteToParcel(Landroid/os/Parcel;J)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    :cond_e
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
