# classes4.dex

.class Lcom/android/internal/os/CpuPowerCalculator$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/CpuPowerCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Result"
.end annotation


# instance fields
.field public cpuFreqTimes:[J

.field public durationFgMs:J

.field public durationMs:J

.field public packageWithHighestDrain:Ljava/lang/String;

.field public perProcStatePowerMah:[D

.field public powerMah:D


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/CpuPowerCalculator$Result-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/CpuPowerCalculator$Result;-><init>()V

    return-void
.end method
