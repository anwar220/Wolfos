# classes3.dex

.class public final Landroid/os/BatteryUsageStatsAtomsProto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;,
        Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;
    }
.end annotation


# static fields
.field public static final DEVICE_BATTERY_CONSUMER:J = 0x10b00000004L

.field public static final DISCHARGE_DURATION_MILLIS:J = 0x10300000007L

.field public static final SESSION_DISCHARGE_PERCENTAGE:J = 0x10500000006L

.field public static final SESSION_DURATION_MILLIS:J = 0x10300000003L

.field public static final SESSION_END_MILLIS:J = 0x10300000002L

.field public static final SESSION_START_MILLIS:J = 0x10300000001L

.field public static final UID_BATTERY_CONSUMERS:J = 0x20b00000005L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
