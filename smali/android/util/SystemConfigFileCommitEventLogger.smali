# classes3.dex

.class public Landroid/util/SystemConfigFileCommitEventLogger;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method onFinishWrite()V
    .registers 6

    iget-object v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V

    return-void
.end method

.method onStartWrite()V
    .registers 5

    iget-wide v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    :cond_e
    return-void
.end method

.method public setStartTime(J)V
    .registers 3

    iput-wide p1, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    return-void
.end method
