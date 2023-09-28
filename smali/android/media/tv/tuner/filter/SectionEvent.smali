# classes2.dex

.class public Landroid/media/tv/tuner/filter/SectionEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataLength:J

.field private final mSectionNum:I

.field private final mTableId:I

.field private final mVersion:I


# direct methods
.method private constructor <init>(IIIJ)V
    .registers 6

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mTableId:I

    iput p2, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mVersion:I

    iput p3, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mSectionNum:I

    iput-wide p4, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mDataLength:J

    return-void
.end method


# virtual methods
.method public getDataLength()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionEvent;->getDataLengthLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDataLengthLong()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mDataLength:J

    return-wide v0
.end method

.method public getSectionNumber()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mSectionNum:I

    return v0
.end method

.method public getTableId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mTableId:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mVersion:I

    return v0
.end method
