# classes4.dex

.class public Lcom/android/internal/os/BinderCallsStats$Injector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public getLatencyObserver(I)Lcom/android/internal/os/BinderLatencyObserver;
    .registers 4

    new-instance v0, Lcom/android/internal/os/BinderLatencyObserver;

    new-instance v1, Lcom/android/internal/os/BinderLatencyObserver$Injector;

    invoke-direct {v1}, Lcom/android/internal/os/BinderLatencyObserver$Injector;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/android/internal/os/BinderLatencyObserver;-><init>(Lcom/android/internal/os/BinderLatencyObserver$Injector;I)V

    return-object v0
.end method

.method public getRandomGenerator()Ljava/util/Random;
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method
