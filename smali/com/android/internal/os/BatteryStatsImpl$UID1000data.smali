# classes4.dex

.class public Lcom/android/internal/os/BatteryStatsImpl$UID1000data;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UID1000data"
.end annotation


# static fields
.field static FullWifiLockOff:I

.field static FullWifiLockOn:I

.field static GpsOff:I

.field static GpsOn:I

.field static Lday:J

.field static Lh:J

.field static Lm:J

.field static Ls:J

.field static audioOff:I

.field static audioOn:I

.field static blueScanOff:I

.field static blueScanOn:I

.field static evString:[Ljava/lang/String;

.field static sensorOff:I

.field static sensorOn:I

.field static wifiScanOff:I

.field static wifiScanOn:I


# instance fields
.field public crt:J

.field public dataist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private head:I

.field public historyCrt:J

.field public historydex:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Lday:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Lh:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Lm:J

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Ls:J

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->audioOn:I

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->audioOff:I

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->blueScanOn:I

    const/4 v0, 0x3

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->blueScanOff:I

    const/4 v0, 0x4

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->wifiScanOn:I

    const/4 v0, 0x5

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->wifiScanOff:I

    const/4 v0, 0x6

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->sensorOn:I

    const/4 v0, 0x7

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->sensorOff:I

    const/16 v0, 0x8

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->FullWifiLockOn:I

    const/16 v0, 0x9

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->FullWifiLockOff:I

    const/16 v0, 0xa

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->GpsOn:I

    const/16 v0, 0xb

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->GpsOff:I

    const-string v1, "audioOn"

    const-string v2, "audioOff"

    const-string v3, "blueScanOn"

    const-string v4, "blueScanOff"

    const-string/jumbo v5, "wifiScanOn"

    const-string/jumbo v6, "wifiScanOff"

    const-string/jumbo v7, "sensorOn"

    const-string/jumbo v8, "sensorOff"

    const-string v9, "FullWifiLockOn"

    const-string v10, "FullWifiLockOff"

    const-string v11, "GpsOn"

    const-string v12, "GpsOff"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->evString:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historyCrt:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->crt:J

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addData(J)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    if-ne v0, v2, :cond_1e

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_23

    const/4 v0, 0x0

    :cond_23
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    goto :goto_2f

    :cond_26
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2f
    return-void
.end method

.method public dumpData(Ljava/io/PrintWriter;JJJJ)Z
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->crt:J

    cmp-long v4, p4, v2

    if-gez v4, :cond_14

    const-string/jumbo v2, "testtttt2"

    const-string v3, "e"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_14
    sub-long v2, p4, v2

    sub-long v2, p2, v2

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historyCrt:J

    sub-long v4, p8, v4

    sub-long v4, p6, v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    const/4 v12, 0x0

    :goto_2a
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_13c

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v11, v13, :cond_3b

    const/4 v11, 0x0

    :cond_3b
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/16 v15, 0x24

    shl-long v16, v13, v15

    ushr-long v15, v16, v15

    move/from16 v17, v7

    iget v7, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x3e8

    if-gt v11, v7, :cond_77

    iget v7, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    if-lt v11, v7, :cond_77

    move/from16 v22, v8

    iget-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historyCrt:J

    cmp-long v7, v7, v18

    if-lez v7, :cond_74

    const/16 v7, 0x2a

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    add-long v7, v4, v15

    invoke-virtual {v6, v7, v8}, Ljava/util/Date;->setTime(J)V

    move-wide/from16 v23, v4

    rem-long v4, v7, v20

    long-to-int v4, v4

    move v7, v4

    goto :goto_83

    :cond_74
    move-wide/from16 v23, v4

    goto :goto_7b

    :cond_77
    move-wide/from16 v23, v4

    move/from16 v22, v8

    :goto_7b
    add-long v4, v2, v15

    invoke-virtual {v6, v4, v5}, Ljava/util/Date;->setTime(J)V

    rem-long v7, v4, v20

    long-to-int v7, v7

    :goto_83
    invoke-virtual {v6}, Ljava/util/Date;->getSeconds()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v10

    const/16 v4, 0xa

    const/16 v5, 0x30

    if-ge v10, v4, :cond_98

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    :cond_98
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    if-ge v9, v4, :cond_a8

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_aa

    :cond_a8
    const/16 v4, 0x30

    :goto_aa
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    const/16 v5, 0xa

    if-ge v8, v5, :cond_b7

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    :cond_b7
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    if-ge v7, v5, :cond_c7

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_c9

    :cond_c7
    const/16 v4, 0x30

    :goto_c9
    const/16 v5, 0x64

    if-ge v7, v5, :cond_d0

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    :cond_d0
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, "--->"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x3c

    ushr-long v4, v13, v4

    const/16 v17, 0x4

    shl-long v20, v13, v17

    const/16 v17, 0x20

    move-wide/from16 v25, v2

    ushr-long v2, v20, v17

    long-to-int v2, v2

    cmp-long v3, v4, v18

    if-nez v3, :cond_f3

    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->evString:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_132

    :cond_f3
    const-wide/16 v17, 0x1

    cmp-long v3, v4, v17

    if-nez v3, :cond_103

    const-string/jumbo v3, "wakelock_on_type:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_132

    :cond_103
    const-wide/16 v17, 0x2

    cmp-long v3, v4, v17

    if-nez v3, :cond_113

    const-string/jumbo v3, "wakelock_off_type:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_132

    :cond_113
    const-wide/16 v17, 0x3

    cmp-long v3, v4, v17

    if-nez v3, :cond_123

    const-string/jumbo v3, "sensor_on_type:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_132

    :cond_123
    const-wide/16 v17, 0x4

    cmp-long v3, v4, v17

    if-nez v3, :cond_132

    const-string/jumbo v3, "sensor_off_type:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_132
    :goto_132
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, v23

    move-wide/from16 v2, v25

    goto/16 :goto_2a

    :cond_13c
    move-wide/from16 v25, v2

    const/4 v2, 0x1

    return v2
.end method

.method noteEvent(IJI)Z
    .registers 13

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->crt:J

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    if-gez v2, :cond_10

    const-string/jumbo v0, "testtttt"

    const-string v1, "e"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_10
    sub-long v0, p2, v0

    sget-wide v4, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Lday:J

    div-long v4, v0, v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-lez v2, :cond_1d

    return v3

    :cond_1d
    int-to-long v2, p1

    const/16 v4, 0x1c

    shl-long v4, v2, v4

    or-long/2addr v0, v4

    if-lez p4, :cond_2b

    int-to-long v4, p4

    const/16 v6, 0x3c

    shl-long v6, v4, v6

    or-long/2addr v0, v6

    :cond_2b
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->addData(J)V

    const/4 v4, 0x1

    return v4
.end method

.method public prepareToWrite(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_17

    const/4 v0, 0x0

    :cond_17
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    if-gt v0, v2, :cond_20

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    if-lt v0, v2, :cond_20

    goto :goto_2b

    :cond_20
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_30
    return-object p1
.end method
