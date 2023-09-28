# classes4.dex

.class Lcom/android/internal/os/StatsdHiddenApiUsageLogger;
.super Ljava/lang/Object;

# interfaces
.implements Ldalvik/system/VMRuntime$HiddenApiUsageLogger;


# static fields
.field private static final sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;


# instance fields
.field private mHiddenApiAccessLogSampleRate:I

.field private mHiddenApiAccessStatslogSampleRate:I

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    invoke-direct {v0}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;-><init>()V

    sput-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    iput v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    return-void
.end method

.method static getInstance()Lcom/android/internal/os/StatsdHiddenApiUsageLogger;
    .registers 1

    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    return-object v0
.end method

.method private logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 9

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_3a

    goto :goto_d

    :pswitch_5  #0x3
    const/4 v0, 0x3

    goto :goto_d

    :pswitch_7  #0x2
    const/4 v0, 0x2

    goto :goto_d

    :pswitch_9  #0x1
    const/4 v0, 0x1

    goto :goto_d

    :pswitch_b  #0x0
    const/4 v0, 0x0

    nop

    :goto_d
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x56f

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x572

    invoke-virtual {v1, v2, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x570

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    if-eqz p4, :cond_34

    const/16 v2, 0x571

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_34
    iget-object v2, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_b  #00000000
        :pswitch_9  #00000001
        :pswitch_7  #00000002
        :pswitch_5  #00000003
    .end packed-switch
.end method

.method private newLogUsage(Ljava/lang/String;IZ)V
    .registers 7

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_18

    goto :goto_d

    :pswitch_5  #0x3
    const/4 v0, 0x3

    goto :goto_d

    :pswitch_7  #0x2
    const/4 v0, 0x2

    goto :goto_d

    :pswitch_9  #0x1
    const/4 v0, 0x1

    goto :goto_d

    :pswitch_b  #0x0
    const/4 v0, 0x0

    nop

    :goto_d
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0xb2

    invoke-static {v2, v1, p1, v0, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b  #00000000
        :pswitch_9  #00000001
        :pswitch_7  #00000002
        :pswitch_5  #00000003
    .end packed-switch
.end method

.method static setHiddenApiAccessLogSampleRates(II)V
    .registers 3

    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    iput p0, v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    iput p1, v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    return-void
.end method


# virtual methods
.method public hiddenApiUsed(ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    iget v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    if-ge p1, v0, :cond_7

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_7
    iget v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    if-ge p1, v0, :cond_e

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->newLogUsage(Ljava/lang/String;IZ)V

    :cond_e
    return-void
.end method
