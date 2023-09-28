# classes4.dex

.class public final Lcom/android/internal/app/procstats/AssociationState$SourceState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/AssociationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceState"
.end annotation


# instance fields
.field mActiveCount:I

.field mActiveDuration:J

.field mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field mActiveNesting:I

.field mActiveProcState:I

.field mActiveStartUptime:J

.field private final mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

.field private mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field mCount:I

.field mDuration:J

.field mInTrackingList:Z

.field final mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

.field mNesting:I

.field mProcState:I

.field mProcStateSeq:I

.field private final mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mStartUptime:J

.field private final mTargetProcess:Lcom/android/internal/app/procstats/ProcessState;

.field mTrackingUptime:J


# direct methods
.method constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    iput-object p3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTargetProcess:Lcom/android/internal/app/procstats/ProcessState;

    iput-object p4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    return-void
.end method

.method private getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTargetProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getOrCreateSourceState(Lcom/android/internal/app/procstats/AssociationState$SourceKey;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    return-object v0
.end method

.method private stopTracking(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v0, :cond_27

    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;I)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalDuration(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v3}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalStartUptime(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v3

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalDuration(Lcom/android/internal/app/procstats/AssociationState;J)V

    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_42
    if-ltz v1, :cond_51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_4e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracking didn\'t find in tracking list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return-void
.end method

.method private stopTrackingProcState()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_13

    invoke-direct {p0, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopTrackingProcState()V

    :cond_13
    return-void
.end method


# virtual methods
.method add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V
    .registers 11

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    iget-wide v0, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_21

    iget-object v4, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v4, :cond_84

    :cond_21
    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v4, :cond_33

    iget-object v2, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v2, :cond_2d

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    goto :goto_84

    :cond_2d
    iget v2, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_84

    :cond_33
    iget-object v4, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v5, -0x1

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_84

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v6, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    iput v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    goto :goto_84

    :cond_54
    iget-wide v6, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    cmp-long v4, v6, v2

    if-eqz v4, :cond_7e

    iget v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget v8, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v4, v8, :cond_64

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    goto :goto_84

    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget-wide v6, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget-wide v6, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    iput v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    goto :goto_84

    :cond_7e
    iget v2, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iput v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    :cond_84
    :goto_84
    return-void
.end method

.method commitStateTime(J)V
    .registers 7

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v0, :cond_f

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    :cond_f
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2a

    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v2, :cond_25

    iget v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_2a

    :cond_25
    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    :cond_2a
    :goto_2a
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAssociationState()Lcom/android/internal/app/procstats/AssociationState;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    return v0
.end method

.method isInUse()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method makeDurations()V
    .registers 3

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    return-void
.end method

.method readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration table corrupt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

.method resetSafely(J)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget-wide v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_1c

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    goto :goto_1e

    :cond_1c
    iput v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    :goto_1e
    iput-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    iput-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    :cond_22
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v0, :cond_31

    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    iput-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    :cond_31
    return-void
.end method

.method start()J
    .registers 4

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->start(J)J

    :cond_14
    return-wide v0
.end method

.method start(J)J
    .registers 7

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-ne v0, v1, :cond_19

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    :cond_12
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    :cond_19
    return-wide p1
.end method

.method startActive(J)V
    .registers 12

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_77

    iget-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3f

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_48

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;I)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v1

    if-ne v1, v2, :cond_48

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveCount(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveCount(Lcom/android/internal/app/procstats/AssociationState;I)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;J)V

    goto :goto_48

    :cond_3f
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-nez v1, :cond_48

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    :cond_48
    :goto_48
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-eq v1, v3, :cond_94

    const/4 v3, -0x1

    if-eq v1, v3, :cond_72

    iget-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v3, p1

    iget-wide v7, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long/2addr v3, v7

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_5e

    const/4 v0, 0x1

    :cond_5e
    cmp-long v1, v3, v5

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-nez v1, :cond_69

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    :cond_69
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v7, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v1, v7, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    :cond_72
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    goto :goto_94

    :cond_77
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_94

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActive while not tracking: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProcessStats"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_a3

    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v1

    if-eqz v1, :cond_a3

    if-eqz v0, :cond_a3

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->startActive(J)V

    :cond_a3
    return-void
.end method

.method stop(J)J
    .registers 7

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-nez v0, :cond_1e

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    :cond_12
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopTracking(J)V

    :cond_1e
    return-wide p1
.end method

.method public stop()V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop(J)J

    :cond_14
    return-void
.end method

.method stopActive(J)V
    .registers 15

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_83

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopActive while not tracking: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ProcessStats"

    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    iget-wide v6, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v6, p1, v6

    iget-object v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-nez v8, :cond_3e

    if-nez v1, :cond_3c

    goto :goto_3e

    :cond_3c
    move-wide v8, p1

    goto :goto_3f

    :cond_3e
    :goto_3e
    move-wide v8, v3

    :goto_3f
    iput-wide v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v1, v8, v3

    if-nez v1, :cond_47

    move v1, v5

    goto :goto_48

    :cond_47
    move v1, v2

    :goto_48
    move v0, v1

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v1, :cond_53

    iget v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v1, v8, v6, v7}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_58

    :cond_53
    iget-wide v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    :goto_58
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_83

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v1, v8}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;I)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveDuration(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v5}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v10

    sub-long v10, p1, v10

    add-long/2addr v8, v10

    invoke-static {v1, v8, v9}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveDuration(Lcom/android/internal/app/procstats/AssociationState;J)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1, v3, v4}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;J)V

    :cond_83
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_92

    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v1

    if-eqz v1, :cond_92

    if-eqz v0, :cond_92

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    :cond_92
    return-void
.end method

.method stopActiveIfNecessary(IJ)Z
    .registers 6

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    invoke-direct {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopTrackingProcState()V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SourceState{"

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

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v3, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v3, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_52

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_52
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trackProcState(IIJ)V
    .registers 8

    move v0, p1

    sget-object v1, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget p1, v1, p1

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    if-eq p2, v1, :cond_e

    iput p2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    goto :goto_14

    :cond_e
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ge p1, v1, :cond_14

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    :cond_14
    :goto_14
    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ge p1, v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-nez v1, :cond_2c

    iput-boolean v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    iput-wide p3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTrackingUptime:J

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_39

    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    :cond_39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_2b

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_2b
    return-void
.end method
