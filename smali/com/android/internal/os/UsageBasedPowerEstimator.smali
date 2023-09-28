# classes4.dex

.class public Lcom/android/internal/os/UsageBasedPowerEstimator;
.super Ljava/lang/Object;


# static fields
.field private static final MILLIS_IN_HOUR:D = 3600000.0


# instance fields
.field private final mAveragePowerMahPerMs:D


# direct methods
.method public constructor <init>(D)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x414b774000000000L  # 3600000.0

    div-double v0, p1, v0

    iput-wide v0, p0, Lcom/android/internal/os/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    return-void
.end method


# virtual methods
.method public calculateDuration(Landroid/os/BatteryStats$Timer;JI)J
    .registers 9

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_c

    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_c
    return-wide v0
.end method

.method public calculatePower(J)D
    .registers 7

    iget-wide v0, p0, Lcom/android/internal/os/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public isSupported()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/internal/os/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
