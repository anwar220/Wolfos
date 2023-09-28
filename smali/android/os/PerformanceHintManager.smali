# classes3.dex

.class public final Landroid/os/PerformanceHintManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerformanceHintManager$Session;
    }
.end annotation


# instance fields
.field private final mNativeManagerPtr:J


# direct methods
.method static bridge synthetic -$$Nest$smnativeCloseSession(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/PerformanceHintManager;->nativeCloseSession(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeReportActualWorkDuration(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/os/PerformanceHintManager;->nativeReportActualWorkDuration(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeUpdateTargetWorkDuration(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/os/PerformanceHintManager;->nativeUpdateTargetWorkDuration(JJ)V

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/PerformanceHintManager;->mNativeManagerPtr:J

    return-void
.end method

.method public static create()Landroid/os/PerformanceHintManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/PerformanceHintManager;->nativeAcquireManager()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    new-instance v2, Landroid/os/PerformanceHintManager;

    invoke-direct {v2, v0, v1}, Landroid/os/PerformanceHintManager;-><init>(J)V

    return-object v2

    :cond_10
    new-instance v2, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string/jumbo v3, "performance_hint"

    invoke-direct {v2, v3}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native nativeAcquireManager()J
.end method

.method private static native nativeCloseSession(J)V
.end method

.method private static native nativeCreateSession(J[IJ)J
.end method

.method private static native nativeGetPreferredUpdateRateNanos(J)J
.end method

.method private static native nativeReportActualWorkDuration(JJ)V
.end method

.method private static native nativeUpdateTargetWorkDuration(JJ)V
.end method


# virtual methods
.method public createHintSession([IJ)Landroid/os/PerformanceHintManager$Session;
    .registers 8

    const-string/jumbo v0, "tids cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    long-to-float v0, p2

    const-string/jumbo v1, "the hint target duration should be positive."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iget-wide v0, p0, Landroid/os/PerformanceHintManager;->mNativeManagerPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/PerformanceHintManager;->nativeCreateSession(J[IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    return-object v2

    :cond_1b
    new-instance v2, Landroid/os/PerformanceHintManager$Session;

    invoke-direct {v2, v0, v1}, Landroid/os/PerformanceHintManager$Session;-><init>(J)V

    return-object v2
.end method

.method public getPreferredUpdateRateNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/os/PerformanceHintManager;->mNativeManagerPtr:J

    invoke-static {v0, v1}, Landroid/os/PerformanceHintManager;->nativeGetPreferredUpdateRateNanos(J)J

    move-result-wide v0

    return-wide v0
.end method
