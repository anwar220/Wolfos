# classes2.dex

.class public Landroid/media/tv/tuner/filter/TsRecordEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataLength:J

.field private final mFirstMbInSlice:I

.field private final mPid:I

.field private final mPts:J

.field private final mScIndexMask:I

.field private final mTsIndexMask:I


# direct methods
.method private constructor <init>(IIIJJI)V
    .registers 9

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPid:I

    iput p2, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mTsIndexMask:I

    iput p3, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mScIndexMask:I

    iput-wide p4, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mDataLength:J

    iput-wide p6, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPts:J

    iput p8, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mFirstMbInSlice:I

    return-void
.end method


# virtual methods
.method public getDataLength()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mDataLength:J

    return-wide v0
.end method

.method public getFirstMacroblockInSlice()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mFirstMbInSlice:I

    return v0
.end method

.method public getPacketId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPid:I

    return v0
.end method

.method public getPts()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPts:J

    return-wide v0
.end method

.method public getScIndexMask()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mScIndexMask:I

    return v0
.end method

.method public getTsIndexMask()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mTsIndexMask:I

    return v0
.end method
