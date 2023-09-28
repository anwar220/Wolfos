# classes3.dex

.class public Landroid/view/SurfaceControl$Transaction;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_COLOR:[F

.field public static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field mFreeNativeResources:Ljava/lang/Runnable;

.field public mNativeObject:J

.field private final mReparentedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mResizedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetNativeTransactionFinalizer()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    new-instance v0, Landroid/view/SurfaceControl$Transaction$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_24
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateTransaction()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;-><init>(J)V

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    iput-wide p1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    sget-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl$Transaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic lambda$addTransactionCommittedListener$0(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    sget-object v2, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    :cond_18
    return-void
.end method


# virtual methods
.method public addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v1, v2, v0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-object p0
.end method

.method public apply()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    return-void
.end method

.method public apply(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->applyResizedSurfaces()V

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->notifyReparentedSurfaces()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeApplyTransaction(JZ)V

    return-void
.end method

.method protected applyResizedSurfaces()V
    .registers 7

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2d

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1f
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl;->resize(II)V

    monitor-exit v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :catchall_2a
    move-exception v4

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v4

    :cond_2d
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method protected checkPreconditions(Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public clear()V
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTransaction(J)V

    :cond_15
    return-void
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    return-void
.end method

.method public deferAnimation(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    if-gez p2, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeDeferAnimation(JJI)V

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    return-object p0
.end method

.method public merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeMergeTransaction(JJ)V

    return-object p0
.end method

.method protected notifyReparentedSurfaces()V
    .registers 9

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_4f

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_17
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_42

    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$OnReparentListener;

    iget-object v7, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl;

    invoke-interface {v6, p0, v7}, Landroid/view/SurfaceControl$OnReparentListener;->onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_42
    iget-object v5, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    nop

    monitor-exit v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :catchall_4c
    move-exception v4

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_17 .. :try_end_4e} :catchall_4c

    throw v4

    :cond_4f
    return-void
.end method

.method public remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-object p0
.end method

.method public removeCurrentInputFocus(I)Landroid/view/SurfaceControl$Transaction;
    .registers 4

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeRemoveCurrentInputFocus(JI)V

    return-object p0
.end method

.method public reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 11

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_c

    invoke-static {p2}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    iget-wide v0, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    :cond_c
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeReparent(JJJ)V

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public requestFocusTransfer(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;
    .registers 13

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object p0
.end method

.method public sanitize()V
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSanitize(J)V

    return-void
.end method

.method public setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetAlpha(JJF)V

    return-object p0
.end method

.method public setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetAnimationTransaction(J)V

    return-object p0
.end method

.method public setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBackgroundBlurRadius(JJI)V

    return-object p0
.end method

.method public setBlurRegions(Landroid/view/SurfaceControl;[[F)Landroid/view/SurfaceControl$Transaction;
    .registers 9

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    array-length v5, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBlurRegions(JJ[[FI)V

    return-object p0
.end method

.method public setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Landroid/hardware/HardwareBuffer;",
            "Landroid/hardware/SyncFence;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p3, :cond_1c

    invoke-virtual {p3}, Landroid/hardware/SyncFence;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-virtual {p3}, Landroid/hardware/SyncFence;->getNativeFence()J

    move-result-wide v6

    move-object v5, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    monitor-exit v0

    goto :goto_27

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v7, 0x0

    move-object v6, p2

    move-object v9, p4

    invoke-static/range {v2 .. v9}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    :goto_27
    return-object p0
.end method

.method public setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetSize(JJII)V

    return-object p0
.end method

.method public setBufferTransform(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBufferTransform(JJI)V

    return-object p0
.end method

.method public setCastLayer(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    if-eqz p2, :cond_a

    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$sfgetmCastLayer()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_a
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$sfgetmCastLayer()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$sfgetmCastLayer()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1b
    :goto_1b
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    if-eqz p2, :cond_27

    const/16 v0, 0x800

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    move v5, v0

    const/16 v6, 0x800

    invoke-static/range {v1 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    return-object p0
.end method

.method public setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColor(JJ[F)V

    return-object p0
.end method

.method public setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_15

    const/high16 v0, 0x88a0000

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1a

    :cond_15
    const/high16 v0, 0x8810000

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_1a
    return-object p0
.end method

.method public setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V

    return-object p0
.end method

.method public setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColorTransform(JJ[F[F)V

    return-object p0
.end method

.method public setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetCornerRadius(JJF)V

    return-object p0
.end method

.method public setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz v2, :cond_24

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->isValid()Z

    move-result v3

    const-string v4, "Crop isn\'t valid."

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v5, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v7, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v5 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    goto :goto_34

    :cond_24
    iget-wide v13, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide v15, v3

    invoke-static/range {v13 .. v20}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    :goto_34
    return-object v0
.end method

.method public setDamageRegion(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V

    return-object p0
.end method

.method public setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDataSpace(JJI)V

    return-object p0
.end method

.method public setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDestinationFrame(JJIIII)V

    return-object p0
.end method

.method public setDesintationFrame(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 11

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDestinationFrame(JJIIII)V

    return-object p0
.end method

.method public setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDimmingEnabled(JJZ)V

    return-object p0
.end method

.method public setDisplayDecoration(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_11

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x200

    const/16 v5, 0x200

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_1b

    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x200

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_1b
    return-object p0
.end method

.method public setDisplayFlags(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_8

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_8

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz p1, :cond_36

    if-eqz v1, :cond_2d

    if-eqz v2, :cond_25

    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v3 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-object v0

    :cond_25
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "layerStackRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayToken must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    if-eqz p1, :cond_15

    if-lez p2, :cond_c

    if-lez p3, :cond_c

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;
    .registers 8

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_13

    iget-object v0, p2, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p2, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    monitor-exit v0

    goto :goto_1a

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    :cond_13
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    :goto_1a
    return-object p0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDropInputMode(JJI)V

    return-object p0
.end method

.method public setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEarlyWakeupEnd(J)V

    return-object p0
.end method

.method public setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEarlyWakeupStart(J)V

    return-object p0
.end method

.method public setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFixedTransformHint(JJI)V

    return-object p0
.end method

.method public setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;
    .registers 11

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object p0
.end method

.method public setFrameRate(Landroid/view/SurfaceControl;FI)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;
    .registers 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRate(JJFII)V

    return-object p0
.end method

.method public setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V

    return-object p0
.end method

.method public setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameTimelineVsync(JJ)V

    return-object p0
.end method

.method public setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;
    .registers 13

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v6, p4

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-object p0
.end method

.method public setHdrDimmer(Landroid/view/SurfaceControl;ZLjava/util/List;Ljava/util/List;)Landroid/view/SurfaceControl$Transaction;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Z",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-class v3, F

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/16 v7, 0x13

    aput v7, v5, v6

    const/4 v7, 0x0

    aput v13, v5, v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, [[F

    const/4 v5, 0x0

    :goto_22
    const/4 v8, 0x3

    const/16 v9, 0x8

    if-ge v5, v13, :cond_6b

    aget-object v10, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    aput v11, v10, v7

    aget-object v10, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    aput v11, v10, v6

    aget-object v10, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    aput v11, v10, v4

    aget-object v10, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    aput v11, v10, v8

    aget-object v8, v14, v5

    const/4 v10, 0x4

    const/high16 v11, 0x3f800000  # 1.0f

    aput v11, v8, v10

    aget-object v8, v14, v5

    aput v11, v8, v9

    aget-object v8, v14, v5

    const/16 v9, 0xc

    aput v11, v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_6b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    new-array v5, v4, [I

    aput v9, v5, v6

    aput v15, v5, v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    const/4 v5, 0x0

    :goto_7c
    if-ge v5, v15, :cond_b1

    aget-object v9, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    aput v10, v9, v7

    aget-object v9, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    aput v10, v9, v6

    aget-object v9, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    aput v10, v9, v4

    aget-object v9, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    aput v10, v9, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    :cond_b1
    iget-wide v4, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v12, p1

    iget-wide v6, v12, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v8, p2

    move-object v9, v14

    move v10, v13

    move-object v11, v3

    move v12, v15

    invoke-static/range {v4 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetHdrDimmer(JJZ[[FI[[FI)V

    return-object v0
.end method

.method public setHdrDimmerRatio(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetHdrDimmerRatio(JJF)V

    return-object p0
.end method

.method public setHdrDimmerRt(Landroid/view/SurfaceControl;ZLjava/util/List;Ljava/util/List;)Landroid/view/SurfaceControl$Transaction;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Z",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;>;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-class v3, F

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/16 v7, 0x13

    aput v7, v5, v6

    const/4 v7, 0x0

    aput v13, v5, v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, [[F

    const/4 v5, 0x0

    :goto_22
    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v15, 0x3

    if-ge v5, v13, :cond_197

    aget-object v16, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    aput v12, v16, v7

    aget-object v12, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    aput v8, v12, v6

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    aput v12, v8, v4

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    aput v12, v8, v15

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v12, v12, v7

    aput v12, v8, v11

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v12, v12, v6

    aput v12, v8, v10

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v12, v12, v4

    aput v12, v8, v9

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v12, v12, v15

    const/4 v15, 0x7

    aput v12, v8, v15

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [F

    aget v11, v12, v11

    const/16 v12, 0x8

    aput v11, v8, v12

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [F

    aget v10, v11, v10

    const/16 v11, 0x9

    aput v10, v8, v11

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [F

    aget v9, v10, v9

    const/16 v10, 0xa

    aput v9, v8, v10

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    const/4 v12, 0x7

    aget v9, v9, v12

    const/16 v12, 0xb

    aput v9, v8, v12

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    const/16 v15, 0x8

    aget v9, v9, v15

    const/16 v15, 0xc

    aput v9, v8, v15

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v11

    const/16 v11, 0xd

    aput v9, v8, v11

    aget-object v8, v14, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v10

    const/16 v10, 0xe

    aput v9, v8, v10

    aget-object v8, v14, v5

    const/16 v9, 0xf

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [F

    aget v7, v7, v12

    aput v7, v8, v9

    aget-object v7, v14, v5

    const/16 v8, 0x10

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v15

    aput v9, v7, v8

    aget-object v7, v14, v5

    const/16 v8, 0x11

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v11

    aput v9, v7, v8

    aget-object v7, v14, v5

    const/16 v8, 0x12

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [F

    aget v9, v9, v10

    aput v9, v7, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction setHdrDimmer brightRegion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v14, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hdr-dim"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_22

    :cond_197
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    new-array v5, v4, [I

    const/16 v7, 0x8

    aput v7, v5, v6

    const/4 v7, 0x0

    aput v12, v5, v7

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    const/4 v5, 0x0

    :goto_1ab
    if-ge v5, v12, :cond_237

    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/16 v16, 0x0

    aput v8, v7, v16

    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    aput v8, v7, v6

    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    aput v8, v7, v4

    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    aput v8, v7, v15

    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    const/16 v16, 0x0

    aget v8, v8, v16

    aput v8, v7, v11

    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    aget v8, v8, v6

    aput v8, v7, v10

    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    aget v8, v8, v15

    aput v8, v7, v9

    aget-object v7, v3, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    aget v8, v8, v4

    const/16 v17, 0x7

    aput v8, v7, v17

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1ab

    :cond_237
    iget-wide v4, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v15, p1

    iget-wide v6, v15, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v8, p2

    move-object v9, v14

    move v10, v13

    move-object v11, v3

    move/from16 v16, v12

    invoke-static/range {v4 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetHdrDimmer(JJZ[[FI[[FI)V

    return-object v0
.end method

.method public setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-object p0
.end method

.method public setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLayer(JJI)V

    return-object p0
.end method

.method public setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLayerStack(JJI)V

    return-object p0
.end method

.method public setLimitedFrameRate(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLimitedFrameRate to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLimitedFrameRate(JLandroid/os/IBinder;I)V

    return-object p0

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 14

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMatrix(JJFFFF)V

    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 11

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 v0, 0x3

    aget v4, p3, v0

    const/4 v0, 0x1

    aget v5, p3, v0

    const/4 v0, 0x4

    aget v6, p3, v0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x2

    aget v0, p3, v0

    const/4 v1, 0x5

    aget v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_7
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object p0

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V

    return-object p0
.end method

.method public setMiSecurityDisplay(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMiSecurityDisplay to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMiSecurityDisplay(JLandroid/os/IBinder;Z)V

    return-object p0

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_f

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_18

    :cond_f
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_18
    return-object p0
.end method

.method public setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetPosition(JJFF)V

    return-object p0
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 11

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v4, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetRelativeLayer(JJJI)V

    return-object p0
.end method

.method public setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .registers 13

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    const-string v4, "Negative value passed in for scaleX"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    const-string v0, "Negative value passed in for scaleY"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetScale(JJFF)V

    return-object p0
.end method

.method public setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetScreenProjection(JJI)V

    return-object p0
.end method

.method public setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_11

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_1b

    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x80

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_1b
    return-object p0
.end method

.method public setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetShadowRadius(JJF)V

    return-object p0
.end method

.method public setShadowSettings(Landroid/view/SurfaceControl;IF[FFFFI)Landroid/view/SurfaceControl$Transaction;
    .registers 22

    move-object v0, p0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    invoke-static/range {p4 .. p4}, Landroid/view/SurfaceControl;->-$$Nest$smvalidateColorArg([F)V

    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object v12, p1

    iget-wide v3, v12, Landroid/view/SurfaceControl;->mNativeObject:J

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v1 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetShadowSettings(JJIF[FFFFI)V

    return-object v0
.end method

.method public setSkipScreenshot(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_11

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x40

    const/16 v5, 0x40

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_1b

    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x40

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_1b
    return-object p0
.end method

.method public setStretchEffect(Landroid/view/SurfaceControl;FFFFFFFFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 28

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v1 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V

    return-object v0
.end method

.method public setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-object p0
.end method

.method public setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTrustedOverlay(JJZ)V

    return-object p0
.end method

.method public setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    return-object p0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz v2, :cond_1b

    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    goto :goto_29

    :cond_1b
    iget-wide v11, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v13, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    :goto_29
    return-object v0
.end method

.method public show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    return-object p0
.end method

.method public syncInputWindows()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSyncInputWindows(J)V

    return-object p0
.end method

.method public unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    sget-object v4, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColor(JJ[F)V

    return-object p0
.end method

.method public unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFixedTransformHint(JJI)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1f

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTransaction(J)V

    :cond_1f
    return-void
.end method
