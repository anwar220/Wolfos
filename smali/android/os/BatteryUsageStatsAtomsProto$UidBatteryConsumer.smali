# classes3.dex

.class public final Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidBatteryConsumer"
.end annotation


# static fields
.field public static final BATTERY_CONSUMER_DATA:J = 0x10b00000002L

.field public static final TIME_IN_BACKGROUND_MILLIS:J = 0x10300000004L

.field public static final TIME_IN_FOREGROUND_MILLIS:J = 0x10300000003L

.field public static final UID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Landroid/os/BatteryUsageStatsAtomsProto;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStatsAtomsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;->this$0:Landroid/os/BatteryUsageStatsAtomsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
