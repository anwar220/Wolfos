# classes4.dex

.class public final synthetic Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/jank/FrameTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/jank/FrameTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/jank/FrameTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->lambda$end$0$com-android-internal-jank-FrameTracker()V

    return-void
.end method