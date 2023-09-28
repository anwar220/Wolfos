# classes2.dex

.class public Landroid/media/tv/tuner/filter/MmtpRecordEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataLength:J

.field private final mFirstMbInSlice:I

.field private final mMpuSequenceNumber:I

.field private final mPts:J

.field private final mScHevcIndexMask:I

.field private final mTsIndexMask:I


# direct methods
.method private constructor <init>(IJIJII)V
    .registers 9

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mScHevcIndexMask:I

    iput-wide p2, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mDataLength:J

    iput p4, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mMpuSequenceNumber:I

    iput-wide p5, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mPts:J

    iput p7, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mFirstMbInSlice:I

    iput p8, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mTsIndexMask:I

    return-void
.end method


# virtual methods
.method public getDataLength()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mDataLength:J

    return-wide v0
.end method

.method public getFirstMacroblockInSlice()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mFirstMbInSlice:I

    return v0
.end method

.method public getMpuSequenceNumber()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mMpuSequenceNumber:I

    return v0
.end method

.method public getPts()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mPts:J

    return-wide v0
.end method

.method public getScHevcIndexMask()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mScHevcIndexMask:I

    return v0
.end method

.method public getTsIndexMask()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mTsIndexMask:I

    return v0
.end method
