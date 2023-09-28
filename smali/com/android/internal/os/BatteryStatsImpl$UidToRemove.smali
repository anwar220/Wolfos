# classes4.dex

.class public final Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidToRemove"
.end annotation


# instance fields
.field private final mEndUid:I

.field private final mStartUid:I

.field private final mUidRemovalTimestamp:J

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IIJ)V
    .registers 6

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mStartUid:I

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mEndUid:I

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IJ)V
    .registers 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IIJ)V

    return-void
.end method


# virtual methods
.method public getUidRemovalTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    return-wide v0
.end method

.method removeLocked()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mStartUid:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->mEndUid:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mremoveCpuStatsForUidRangeLocked(Lcom/android/internal/os/BatteryStatsImpl;II)V

    return-void
.end method
