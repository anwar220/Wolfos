# classes3.dex

.class public final Landroid/view/ContentRecordingSession$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentRecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mContentToRecord:I

.field private mDisplayId:I

.field private mTokenToRecord:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/view/ContentRecordingSession;
    .registers 7

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayId:I

    :cond_16
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    :cond_20
    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    :cond_2a
    new-instance v0, Landroid/view/ContentRecordingSession;

    iget v1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayId:I

    iget v2, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    iget-object v3, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ContentRecordingSession;-><init>(IILandroid/os/IBinder;)V

    return-object v0
.end method

.method public setContentToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    return-object p0
.end method

.method public setDisplayId(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayId:I

    return-object p0
.end method

.method public setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    return-object p0
.end method
