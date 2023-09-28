# classes4.dex

.class Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WifiPowerCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerDurationAndTraffic"
.end annotation


# instance fields
.field public durationMs:J

.field public keys:[Landroid/os/BatteryConsumer$Key;

.field public powerMah:D

.field public powerPerKeyMah:[D

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;-><init>()V

    return-void
.end method
