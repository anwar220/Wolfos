# classes3.dex

.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    return-void
.end method

.method public constructor <init>(I[J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ltz p3, :cond_27

    shr-long v1, p1, p3

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 p3, p3, -0x4

    if-nez v0, :cond_10

    if-nez v1, :cond_10

    goto :goto_1

    :cond_10
    const/4 v0, 0x1

    if-ltz v1, :cond_1e

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1e

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_1e
    add-int/lit8 v2, v1, 0x61

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_26
    goto :goto_1

    :cond_27
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    iget v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iget-wide v5, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_40

    if-lez v1, :cond_40

    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    sub-long v8, v2, v5

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v1, :cond_3b

    array-length v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x0

    invoke-static {v7, v13, v7, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v11, v1, v10

    int-to-long v11, v11

    div-long v11, v8, v11

    sub-long/2addr v8, v11

    const-wide v14, 0xffffffffffL

    cmp-long v14, v11, v14

    if-lez v14, :cond_34

    const-wide v11, 0xffffffffffL

    :cond_34
    or-long v14, v11, p2

    aput-wide v14, v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_3b
    add-int/2addr v4, v1

    array-length v10, v7

    if-le v4, v10, :cond_40

    array-length v4, v7

    :cond_40
    iput v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iput-wide v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public clearTime()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-wide/16 v3, -0x1

    if-gtz v2, :cond_b

    return-wide v3

    :cond_b
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v2, :cond_3d

    aget-wide v9, v1, v8

    const-wide/high16 v11, 0xff000000000000L

    and-long/2addr v9, v11

    const/16 v11, 0x30

    shr-long/2addr v9, v11

    aget-wide v11, v1, v8

    const-wide/high16 v13, -0x100000000000000L

    and-long/2addr v11, v13

    const/16 v13, 0x38

    shr-long/2addr v11, v13

    and-long v13, v11, p1

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_3a

    and-long v13, v9, p1

    cmp-long v13, v13, p3

    if-nez v13, :cond_3a

    add-int/lit8 v7, v7, 0x1

    aget-wide v13, v1, v8

    const-wide v15, 0xffffffffffL

    and-long/2addr v13, v15

    add-long/2addr v5, v13

    :cond_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_3d
    if-gtz v7, :cond_40

    return-wide v3

    :cond_40
    if-eqz p5, :cond_45

    const/4 v3, 0x0

    aput v7, p5, v3

    :cond_45
    int-to-long v3, v7

    div-long v3, v5, v3

    const-wide/16 v8, 0x64

    mul-long/2addr v3, v8

    return-wide v3
.end method

.method public computeTimePerLevel()J
    .registers 10

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_9

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_9
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v1, :cond_1a

    aget-wide v5, v0, v4

    const-wide v7, 0xffffffffffL

    and-long/2addr v5, v7

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1a
    int-to-long v4, v1

    div-long v4, v2, v4

    return-wide v4
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_9
    const/16 v5, 0x2d

    if-ge v2, v1, :cond_49

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v6

    if-eq v6, v5, :cond_49

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v5, 0x0

    sparse-switch v7, :sswitch_data_f8

    goto :goto_48

    :sswitch_1c
    const-wide/high16 v5, 0x3000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_20
    const-wide/high16 v5, 0x4000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_24
    const-wide/high16 v5, 0x1000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_28
    const-wide/high16 v5, 0x8000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_2c
    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_2e
    const-wide/high16 v5, 0x2000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_32
    const-wide/high16 v5, 0x300000000000000L  # 3.13151306251402E-294

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_36
    const-wide/high16 v5, 0x400000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_3a
    const-wide/high16 v5, 0x100000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_3e
    const-wide/high16 v5, 0x800000000000000L

    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_42
    or-long/2addr v3, v5

    goto :goto_48

    :sswitch_44
    const-wide/high16 v5, 0x200000000000000L

    or-long/2addr v3, v5

    nop

    :goto_48
    goto :goto_9

    :cond_49
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v6, 0x0

    :cond_4d
    :goto_4d
    const/16 v8, 0x46

    const/16 v9, 0x66

    const/16 v10, 0x39

    const/4 v11, 0x4

    const/16 v12, 0x41

    const/16 v13, 0x61

    const/16 v14, 0x30

    if-ge v2, v1, :cond_8a

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    if-eq v15, v5, :cond_88

    add-int/lit8 v2, v2, 0x1

    shl-long/2addr v6, v11

    move/from16 v15, v16

    if-lt v15, v14, :cond_72

    if-gt v15, v10, :cond_72

    add-int/lit8 v8, v15, -0x30

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_4d

    :cond_72
    if-lt v15, v13, :cond_7d

    if-gt v15, v9, :cond_7d

    add-int/lit8 v16, v15, -0x61

    add-int/lit8 v8, v16, 0xa

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_4d

    :cond_7d
    if-lt v15, v12, :cond_4d

    if-gt v15, v8, :cond_4d

    add-int/lit8 v16, v15, -0x41

    add-int/lit8 v8, v16, 0xa

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_4d

    :cond_88
    move/from16 v15, v16

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    const/16 v15, 0x28

    shl-long v15, v6, v15

    const-wide v17, 0xff0000000000L

    and-long v15, v15, v17

    or-long/2addr v3, v15

    const-wide/16 v15, 0x0

    :goto_9a
    if-ge v2, v1, :cond_e9

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v18, v8

    if-eq v8, v5, :cond_e7

    add-int/lit8 v2, v2, 0x1

    shl-long/2addr v15, v11

    move/from16 v8, v18

    if-lt v8, v14, :cond_b9

    if-gt v8, v10, :cond_b9

    add-int/lit8 v5, v8, -0x30

    int-to-long v10, v5

    add-long/2addr v15, v10

    const/16 v5, 0x2d

    const/16 v8, 0x46

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_9a

    :cond_b9
    if-lt v8, v13, :cond_cb

    if-gt v8, v9, :cond_cb

    add-int/lit8 v5, v8, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-long v10, v5

    add-long/2addr v15, v10

    const/16 v5, 0x2d

    const/16 v8, 0x46

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_9a

    :cond_cb
    if-lt v8, v12, :cond_de

    const/16 v5, 0x46

    if-gt v8, v5, :cond_e0

    add-int/lit8 v10, v8, -0x41

    add-int/lit8 v10, v10, 0xa

    int-to-long v10, v10

    add-long/2addr v15, v10

    move v8, v5

    const/16 v5, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_9a

    :cond_de
    const/16 v5, 0x46

    :cond_e0
    move v8, v5

    const/16 v5, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_9a

    :cond_e7
    move/from16 v8, v18

    :cond_e9
    move-object/from16 v5, p0

    iget-object v8, v5, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v9, 0xffffffffffL

    and-long/2addr v9, v15

    or-long/2addr v9, v3

    aput-wide v9, v8, p1

    return-void

    nop

    :sswitch_data_f8
    .sparse-switch
        0x44 -> :sswitch_44
        0x46 -> :sswitch_42
        0x49 -> :sswitch_3e
        0x4f -> :sswitch_3a
        0x50 -> :sswitch_36
        0x5a -> :sswitch_32
        0x64 -> :sswitch_2e
        0x66 -> :sswitch_2c
        0x69 -> :sswitch_28
        0x6f -> :sswitch_24
        0x70 -> :sswitch_20
        0x7a -> :sswitch_1c
    .end sparse-switch
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .registers 14

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v2, v0

    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v0

    const/16 v6, 0x28

    shr-long/2addr v4, v6

    long-to-int v4, v4

    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v5, v0

    const/16 v7, 0x30

    shr-long/2addr v5, v7

    long-to-int v5, v5

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v6, v0

    const/16 v8, 0x38

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v7, v5, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_98

    goto :goto_41

    :pswitch_2a  #0x4
    const/16 v7, 0x7a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    :pswitch_30  #0x3
    const/16 v7, 0x64

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    :pswitch_36  #0x2
    const/16 v7, 0x6f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    :pswitch_3c  #0x1
    const/16 v7, 0x66

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_41
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_4a

    const/16 v7, 0x70

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4a
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_53

    const/16 v7, 0x69

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_53
    and-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_a4

    goto :goto_72

    :pswitch_5b  #0x4
    const/16 v7, 0x5a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    :pswitch_61  #0x3
    const/16 v7, 0x44

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    :pswitch_67  #0x2
    const/16 v7, 0x4f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    :pswitch_6d  #0x1
    const/16 v7, 0x46

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_72
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_7b

    const/16 v7, 0x50

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7b
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_84

    const/16 v7, 0x49

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_84
    const/16 v7, 0x2d

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v8, v4

    const/4 v10, 0x4

    invoke-direct {p0, v8, v9, v10, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x24

    invoke-direct {p0, v2, v3, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_36  #00000002
        :pswitch_30  #00000003
        :pswitch_2a  #00000004
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_6d  #00000001
        :pswitch_67  #00000002
        :pswitch_61  #00000003
        :pswitch_5b  #00000004
    .end packed-switch
.end method

.method public getDurationAt(I)J
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitModeAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLevelAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xff0000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getModModeAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public init()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1a

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    return-void

    :cond_1a
    new-instance v1, Landroid/os/ParcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "more step durations than available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 6

    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method
