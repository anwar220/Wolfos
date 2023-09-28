# classes3.dex

.class public Landroid/os/PerformanceHintManager$Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerformanceHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private mNativeSessionPtr:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    invoke-static {v0, v1}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeCloseSession(J)V

    iput-wide v2, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    :cond_d
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/os/PerformanceHintManager$Session;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public reportActualWorkDuration(J)V
    .registers 5

    long-to-float v0, p1

    const-string/jumbo v1, "the actual duration should be positive."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeReportActualWorkDuration(JJ)V

    return-void
.end method

.method public updateTargetWorkDuration(J)V
    .registers 5

    long-to-float v0, p1

    const-string/jumbo v1, "the hint target duration should be positive."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeUpdateTargetWorkDuration(JJ)V

    return-void
.end method
