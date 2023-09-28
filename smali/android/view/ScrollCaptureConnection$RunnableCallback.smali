# classes3.dex

.class final Landroid/view/ScrollCaptureConnection$RunnableCallback;
.super Landroid/view/ScrollCaptureConnection$SafeCallback;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ScrollCaptureConnection$SafeCallback<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ScrollCaptureConnection$SafeCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    new-instance v0, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureConnection$RunnableCallback;->maybeAccept(Ljava/util/function/Consumer;)V

    return-void
.end method
