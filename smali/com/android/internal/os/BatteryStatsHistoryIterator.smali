# classes4.dex

.class public Lcom/android/internal/os/BatteryStatsHistoryIterator;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryStatsHistoryItr"


# instance fields
.field private final mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsHistory;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHistory;->startIteratingHistory()Z

    return-void
.end method

.method private static readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .registers 3

    const/high16 v0, -0x2000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const v0, 0x1ff8000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    iput-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    and-int/lit16 v0, p0, 0x7ffe

    ushr-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    return-void
.end method

.method private readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z
    .registers 7

    const/4 v0, 0x0

    const v1, 0xffff

    if-ne p2, v1, :cond_7

    return v0

    :cond_7
    const v1, 0x8000

    and-int/2addr v1, p2

    if-eqz v1, :cond_26

    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    const v1, -0x8001

    and-int/2addr v1, p2

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iget v2, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_3b

    :cond_26
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_34

    invoke-virtual {p3, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_39

    :cond_34
    const/4 v2, 0x0

    iput-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput v0, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    :goto_39
    iput p2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    :goto_3b
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public next(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->getNextParcel(Landroid/os/BatteryStats$HistoryItem;)Landroid/os/Parcel;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory;->finishIteratingHistory()V

    const/4 v1, 0x0

    return v1

    :cond_f
    iget-wide v1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v3, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    iget-byte v5, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2c

    iget-byte v5, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2c

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2c

    iget-wide v5, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v5, v1

    add-long/2addr v5, v3

    iput-wide v5, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :cond_2c
    const/4 v5, 0x1

    return v5
.end method

.method readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 14

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0x7ffff

    and-int/2addr v1, v0

    const/4 v2, 0x0

    iput-byte v2, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    iput v3, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    const/4 v4, 0x2

    const v5, 0x7fffd

    if-ge v1, v5, :cond_1b

    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_44

    :cond_1b
    if-ne v1, v5, :cond_21

    invoke-virtual {p2, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void

    :cond_21
    const v5, 0x7fffe

    if-ne v1, v5, :cond_36

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iget-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_44

    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iget-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v7, v5

    iput-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget v7, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v7, v4

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    :goto_44
    const/high16 v5, 0x80000

    and-int/2addr v5, v0

    if-eqz v5, :cond_56

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5, p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V

    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_57

    :cond_56
    const/4 v5, 0x0

    :goto_57
    const/high16 v6, 0x100000

    and-int/2addr v6, v0

    const v7, 0xffffff

    const/high16 v8, -0x2000000

    if-eqz v6, :cond_95

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    and-int/2addr v8, v0

    and-int/2addr v7, v6

    or-int/2addr v7, v8

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    shr-int/lit8 v7, v6, 0x1d

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shr-int/lit8 v7, v6, 0x1a

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shr-int/lit8 v7, v6, 0x18

    and-int/lit8 v7, v7, 0x3

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v7, :pswitch_data_136

    goto :goto_8f

    :pswitch_85  #0x3
    const/4 v4, 0x4

    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_8f

    :pswitch_89  #0x2
    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_8f

    :pswitch_8c  #0x1
    iput-byte v3, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    nop

    :goto_8f
    iget v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_9d

    :cond_95
    and-int v4, v0, v8

    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_9d
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :cond_a8
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    const v6, 0xffff

    const/4 v7, 0x0

    if-eqz v4, :cond_de

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    and-int v8, v4, v6

    shr-int/lit8 v9, v4, 0x10

    and-int/2addr v9, v6

    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_c7

    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_c9

    :cond_c7
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    :goto_c9
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v9, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_d6

    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_d8

    :cond_d6
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    :goto_d8
    iget v10, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v3

    iput v10, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_e2

    :cond_de
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    :goto_e2
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_10b

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int v4, v2, v6

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    shr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v6

    iget-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v4, v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v6

    if-eqz v6, :cond_103

    iget-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_105

    :cond_103
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    :goto_105
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_10d

    :cond_10b
    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    :goto_10d
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_11b

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_11d

    :cond_11b
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    :goto_11d
    const/high16 v2, 0x1000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_128

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    :cond_128
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    return-void

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_8c  #00000001
        :pswitch_89  #00000002
        :pswitch_85  #00000003
    .end packed-switch
.end method
