# classes3.dex

.class public final Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerComponentUsage"
.end annotation


# static fields
.field public static final COMPONENT:J = 0x10500000001L

.field public static final DURATION_MILLIS:J = 0x10300000003L

.field public static final POWER_DECI_COULOMBS:J = 0x10300000002L


# instance fields
.field final synthetic this$1:Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;)V
    .registers 2

    iput-object p1, p0, Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsage;->this$1:Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
