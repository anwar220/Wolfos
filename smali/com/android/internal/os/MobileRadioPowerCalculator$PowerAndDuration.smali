# classes4.dex

.class Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/MobileRadioPowerCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerAndDuration"
.end annotation


# instance fields
.field public durationMs:J

.field public noCoverageDurationMs:J

.field public remainingPowerMah:D

.field public signalDurationMs:J

.field public totalAppDurationMs:J

.field public totalAppPowerMah:D


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;-><init>()V

    return-void
.end method
