# classes3.dex

.class public final Landroid/os/AppBatteryStatsProto$UidStats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AppBatteryStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AppBatteryStatsProto$UidStats$ProcessStateStats;
    }
.end annotation


# static fields
.field public static final PROCESS_STATE_STATS:J = 0x20b00000002L

.field public static final UID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Landroid/os/AppBatteryStatsProto;


# direct methods
.method public constructor <init>(Landroid/os/AppBatteryStatsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/AppBatteryStatsProto$UidStats;->this$0:Landroid/os/AppBatteryStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
