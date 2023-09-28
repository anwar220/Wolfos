# classes4.dex

.class public final Lcom/android/internal/os/LongArrayMultiStateCounter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/LongArrayMultiStateCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final sTmpArrayContainer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLength:I

.field final mNativeObject:J

.field private final mStateCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_getReleaseFunc()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->sTmpArrayContainer:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter$1;

    invoke-direct {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "stateCount must be greater than 0"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    iput p1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    iput p2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    invoke-static {p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_init(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    sget-object v2, Lcom/android/internal/os/LongArrayMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_initFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    sget-object v2, Lcom/android/internal/os/LongArrayMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_getStateCount(J)I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    invoke-static {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_getArrayLength(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/os/LongArrayMultiStateCounter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static native native_addCounts(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_getArrayLength(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_getCounts(JJI)V
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

.method private static native native_init(II)J
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

.method private static native native_updateValues(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native native_writeToParcel(JLandroid/os/Parcel;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public addCounts(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->-$$Nest$fgetmLength(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    if-ne v0, v1, :cond_10

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    iget-wide v2, p1, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_addCounts(JJ)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->-$$Nest$fgetmLength(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getArrayLength()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    return v0
.end method

.method public getCounts(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;I)V
    .registers 7

    if-ltz p2, :cond_e

    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    if-ge p2, v0, :cond_e

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    iget-wide v2, p1, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_getCounts(JJI)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outside the range: [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

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

.method public getCounts([JI)V
    .registers 7

    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->sTmpArrayContainer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    if-eqz v1, :cond_12

    invoke-static {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->-$$Nest$fgetmLength(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)I

    move-result v2

    array-length v3, p1

    if-eq v2, v3, :cond_19

    :cond_12
    new-instance v2, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    array-length v3, p1

    invoke-direct {v2, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;-><init>(I)V

    move-object v1, v2

    :cond_19
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;I)V

    invoke-virtual {v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->getValues([J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getStateCount()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    return v0
.end method

.method public reset()V
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_reset(J)V

    return-void
.end method

.method public setEnabled(ZJ)V
    .registers 6

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_setEnabled(JZJ)V

    return-void
.end method

.method public setState(IJ)V
    .registers 7

    if-ltz p1, :cond_c

    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_c

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_setState(JIJ)V

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

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

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

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateValues(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;J)V
    .registers 12

    invoke-static {p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->-$$Nest$fgetmLength(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    if-ne v0, v1, :cond_11

    iget-wide v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    iget-wide v4, p1, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_updateValues(JJJ)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->-$$Nest$fgetmLength(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_writeToParcel(JLandroid/os/Parcel;I)V

    return-void
.end method
