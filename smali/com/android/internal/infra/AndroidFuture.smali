# classes4.dex

.class public Lcom/android/internal/infra/AndroidFuture;
.super Ljava/util/concurrent/CompletableFuture;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/AndroidFuture$SupplyAsync;,
        Lcom/android/internal/infra/AndroidFuture$ThenCombine;,
        Lcom/android/internal/infra/AndroidFuture$ThenApplyAsync;,
        Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture<",
        "TT;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/infra/AndroidFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sMainHandler:Landroid/os/Handler;


# instance fields
.field private mListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;

.field private final mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    new-instance v0, Lcom/android/internal/infra/AndroidFuture$2;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture$2;-><init>()V

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/android/internal/infra/AndroidFuture;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/android/internal/infra/AndroidFuture;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-static {p1}, Lcom/android/internal/infra/AndroidFuture;->readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_30

    :cond_29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :goto_30
    iput-object v1, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    goto :goto_3d

    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/IAndroidFuture$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/infra/IAndroidFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    :goto_3d
    return-void
.end method

.method static callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TTT;-",
            "Ljava/lang/Throwable;",
            ">;TTT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    if-nez p2, :cond_c

    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p0, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    goto :goto_2a

    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    nop

    throw v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call whenComplete listener. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void
.end method

.method private callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_a

    invoke-static {p1, p2, p3}, Lcom/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_12
    return-void
.end method

.method public static completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getMainHandler()Landroid/os/Handler;
    .registers 2

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    :cond_f
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic lambda$callListenerAsync$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$thenCombine$2(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;
    .registers 2

    return-object p0
.end method

.method static synthetic lambda$whenCompleteAsync$0(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p0, p2, p3}, Lcom/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p3}, Lcom/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;
    .registers 14

    const-string v0, ": "

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_1d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_40
    const-class v7, Landroid/os/Parcelable;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v3, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-class v9, Ljava/lang/Throwable;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_6a

    new-array v9, v8, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Throwable;

    move-object v0, v8

    goto :goto_9e

    :cond_6a
    const v9, 0x534e4554

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "186530450"

    aput-object v12, v11, v10

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v8

    const/4 v8, 0x2

    const-string v10, ""

    aput-object v10, v11, v8

    invoke-static {v9, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_40 .. :try_end_9d} :catchall_9f

    move-object v0, v8

    :goto_9e
    goto :goto_be

    :catchall_9f
    move-exception v7

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_be
    sget-object v7, Lcom/android/internal/infra/AndroidFuture;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_cc

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_cc
    return-object v0
.end method

.method public static supply(Ljava/util/function/Supplier;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture$SupplyAsync;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AndroidFuture$SupplyAsync;-><init>(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-nez v2, :cond_d

    return-void

    :cond_d
    instance-of v3, p1, Landroid/os/Parcelable;

    if-eqz v3, :cond_23

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/os/Parcelable;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v3, v4, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, v0

    :goto_24
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz v3, :cond_30

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_4e

    array-length v0, v1

    :cond_4e
    const/4 v5, 0x5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v5, 0x0

    :goto_54
    if-ge v5, v0, :cond_6b

    if-lez v5, :cond_5d

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5d
    const-string v6, "\tat "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/infra/AndroidFuture;->writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 6

    const-string v0, "Expected CancellationException"

    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1f

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_12} :catch_19
    .catchall {:try_start_9 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_19
    move-exception v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    nop

    :goto_1f
    return v1
.end method

.method public cancelTimeout()Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-object p0
.end method

.method public complete(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return v0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 4

    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->cancelTimeout()Lcom/android/internal/infra/AndroidFuture;

    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_22

    if-eqz v1, :cond_11

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_11
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    if-eqz v0, :cond_21

    :try_start_15
    invoke-interface {v0, p0}, Lcom/android/internal/infra/IAndroidFuture;->complete(Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v0

    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to propagate completion"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-object p0
.end method

.method public bridge synthetic orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public setTimeoutHandler(Landroid/os/Handler;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->cancelTimeout()Lcom/android/internal/infra/AndroidFuture;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture$ThenApplyAsync;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenApplyAsync;-><init>(Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCombine(Ljava/util/concurrent/CompletionStage;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;-><init>(Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method triggerTimeout()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->cancelTimeout()Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_11
    return-void
.end method

.method unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p1

    :goto_a
    return-object v0
.end method

.method public whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    if-eq p2, v2, :cond_1c

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    monitor-exit v0

    return-object p0

    :cond_1c
    iput-object p2, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_22

    move-object v2, p1

    goto :goto_27

    :cond_22
    new-instance v2, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    :goto_27
    iput-object v2, p0, Lcom/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    monitor-exit v0

    return-object p0

    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_41

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2e
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2e .. :try_end_32} :catch_37
    .catchall {:try_start_2e .. :try_end_32} :catchall_34

    move-object v0, v2

    :goto_33
    goto :goto_3d

    :catchall_34
    move-exception v2

    move-object v1, v2

    goto :goto_3d

    :catch_37
    move-exception v2

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_33

    :goto_3d
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/infra/AndroidFuture;->callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz v0, :cond_23

    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_16

    nop

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_2f

    :catchall_16
    move-exception v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AndroidFuture;->unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    return-void

    :cond_23
    new-instance v1, Lcom/android/internal/infra/AndroidFuture$1;

    invoke-direct {v1, p0}, Lcom/android/internal/infra/AndroidFuture$1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture$1;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_2f
    return-void
.end method
