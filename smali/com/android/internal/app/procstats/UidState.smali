# classes4.dex

.class public final Lcom/android/internal/app/procstats/UidState;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mCurCombinedState:I

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private final mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mTotalRunningDuration:J

.field private mTotalRunningStartTime:J

.field private final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iput-object p1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    return-void
.end method

.method private calcCombinedState()I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_9
    if-ge v2, v3, :cond_25

    iget-object v4, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v4

    rem-int/lit8 v5, v4, 0x10

    const/4 v6, -0x1

    if-eq v4, v6, :cond_22

    if-eq v1, v6, :cond_20

    if-ge v5, v1, :cond_22

    :cond_20
    move v0, v4

    move v1, v5

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    return v0
.end method

.method private setCombinedStateInner(IJ)V
    .registers 8

    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_22

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_20

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->commitStateTime(J)V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1a

    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    goto :goto_20

    :cond_1a
    iget v3, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v3, v2, :cond_20

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    :cond_20
    :goto_20
    iput p1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    :cond_22
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/UidState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    return-void
.end method

.method addProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    return-void
.end method

.method public clone()Lcom/android/internal/app/procstats/UidState;
    .registers 4

    new-instance v0, Lcom/android/internal/app/procstats/UidState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget v1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iput v1, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->clone()Lcom/android/internal/app/procstats/UidState;

    move-result-object v0

    return-object v0
.end method

.method public commitStateTime(J)V
    .registers 10

    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_14
    iget-wide v3, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v5, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v5, p1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    :cond_1f
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    return-void
.end method

.method dumpState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_e
    array-length v9, v2

    const-string v11, ": "

    if-ge v8, v9, :cond_aa

    const/4 v9, -0x1

    const/16 v16, 0x0

    move/from16 v14, v16

    :goto_18
    array-length v10, v3

    if-ge v14, v10, :cond_9e

    const/4 v10, 0x0

    :goto_1c
    array-length v15, v4

    if-ge v10, v15, :cond_92

    aget v15, v2, v8

    aget v12, v3, v14

    add-int v13, v15, v12

    mul-int/lit8 v13, v13, 0x10

    aget v19, v4, v10

    add-int v13, v13, v19

    move/from16 v19, v8

    iget-object v8, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v20, v14

    int-to-byte v14, v13

    invoke-virtual {v8, v14}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v21

    const-string v8, ""

    iget v14, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v14, v13, :cond_49

    const-string v8, " (running)"

    move/from16 v23, v13

    iget-wide v13, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v13, p6, v13

    add-long v21, v21, v13

    move-wide/from16 v13, v21

    goto :goto_4d

    :cond_49
    move/from16 v23, v13

    move-wide/from16 v13, v21

    :goto_4d
    const-wide/16 v17, 0x0

    cmp-long v21, v13, v17

    if-eqz v21, :cond_87

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_63

    if-eq v7, v15, :cond_5e

    move v0, v15

    goto :goto_5f

    :cond_5e
    const/4 v0, -0x1

    :goto_5f
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v7, v15

    :cond_63
    array-length v0, v3

    const/4 v2, 0x1

    if-le v0, v2, :cond_74

    nop

    if-eq v9, v12, :cond_6c

    move v0, v12

    goto :goto_6d

    :cond_6c
    const/4 v0, -0x1

    :goto_6d
    const/16 v2, 0x2f

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v0, v12

    move v9, v0

    :cond_74
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v2, v4, v10

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long/2addr v5, v13

    :cond_87
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v8, v19

    move/from16 v14, v20

    goto :goto_1c

    :cond_92
    move/from16 v19, v8

    move/from16 v20, v14

    add-int/lit8 v14, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    goto/16 :goto_18

    :cond_9e
    move/from16 v19, v8

    move/from16 v20, v14

    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    goto/16 :goto_e

    :cond_aa
    move/from16 v19, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_d8

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v8, 0x1

    if-le v2, v8, :cond_c0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_c1

    :cond_c0
    const/4 v2, -0x1

    :goto_c1
    array-length v9, v3

    if-le v9, v8, :cond_c9

    const/16 v8, 0x2f

    invoke-static {v1, v2, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    :cond_c9
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_da

    :cond_d8
    move-object/from16 v0, p3

    :goto_da
    return-void
.end method

.method public getAggregatedDurationsInStates()[J
    .registers 11

    const/16 v0, 0x10

    new-array v0, v0, [J

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->getDurationsBucketCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_25

    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    rem-int/lit8 v5, v4, 0x10

    aget-wide v6, v0, v5

    iget-object v8, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    return-object v0
.end method

.method public getCombinedState()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    return v0
.end method

.method public getDuration(IJ)J
    .registers 8

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v2, p1, :cond_10

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    :cond_10
    return-wide v0
.end method

.method public getDurationsBucketCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public getTotalRunningDuration(J)J
    .registers 10

    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c

    sub-long v4, p1, v2

    :cond_c
    add-long/2addr v0, v4

    return-wide v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_2a

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    return v3

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public isInUse()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_1c

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    return v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    const/4 v0, 0x1

    return v0
.end method

.method removeProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    return-void
.end method

.method public resetSafely(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UidState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateCombinedState(IJ)V
    .registers 5

    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_7

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    :cond_7
    return-void
.end method

.method public updateCombinedState(J)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/app/procstats/UidState;->calcCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->getTotalRunningDuration(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
