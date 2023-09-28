# classes4.dex

.class public final Lcom/android/internal/os/LongMultiStateCounter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/LongMultiStateCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field final mNativeObject:J

.field private final mStateCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/LongMultiStateCounter;->native_getReleaseFunc()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter$1;

    invoke-direct {v0}, Lcom/android/internal/os/LongMultiStateCounter$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "stateCount must be greater than 0"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    iput p1, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    invoke-static {p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    sget-object v2, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_initFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    sget-object v2, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_getStateCount(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/os/LongMultiStateCounter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static native native_addCount(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_getCount(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_getReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_getStateCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_incrementValue(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_init(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_initFromParcel(Landroid/os/Parcel;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native native_reset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_setEnabled(JZJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_setState(JIJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native native_toString(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native native_updateValue(JJJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native native_writeToParcel(JLandroid/os/Parcel;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public addCount(J)V
    .registers 5

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->native_addCount(JJ)V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCount(I)J
    .registers 5

    if-ltz p1, :cond_d

    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_d

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_getCount(JI)J

    move-result-wide v0

    return-wide v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outside the range: [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStateCount()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    return v0
.end method

.method public getTotalCount()J
    .registers 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge v2, v3, :cond_11

    iget-wide v3, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v3, v4, v2}, Lcom/android/internal/os/LongMultiStateCounter;->native_getCount(JI)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    return-wide v0
.end method

.method public incrementValue(JJ)V
    .registers 11

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/LongMultiStateCounter;->native_incrementValue(JJJ)V

    return-void
.end method

.method public reset()V
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_reset(J)V

    return-void
.end method

.method public setEnabled(ZJ)V
    .registers 6

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->native_setEnabled(JZJ)V

    return-void
.end method

.method public setState(IJ)V
    .registers 7

    if-ltz p1, :cond_c

    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_c

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->native_setState(JIJ)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outside the range: [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateValue(JJ)J
    .registers 11

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/LongMultiStateCounter;->native_updateValue(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->native_writeToParcel(JLandroid/os/Parcel;I)V

    return-void
.end method
