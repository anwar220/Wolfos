# classes2.dex

.class public Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bandwidthCap:I

.field public coderateCap:I

.field public guardIntervalCap:I

.field public isFullSegment:Z

.field public isSegmentAuto:Z

.field public modeCap:I

.field public modulationCap:I

.field public timeInterleaveCap:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->modeCap:I

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->bandwidthCap:I

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->modulationCap:I

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->coderateCap:I

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->guardIntervalCap:I

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->timeInterleaveCap:I

    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->isSegmentAuto:Z

    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->isFullSegment:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_102

    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->modeCap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->bandwidthCap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->modulationCap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->coderateCap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->guardIntervalCap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->timeInterleaveCap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->isSegmentAuto:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->isFullSegment:Z
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_100

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fa

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_fa
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_100
    move-exception v2

    goto :goto_10a

    :cond_102
    :try_start_102
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_100

    :goto_10a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_113

    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_113
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->modeCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->bandwidthCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->modulationCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->coderateCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->guardIntervalCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->timeInterleaveCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->isSegmentAuto:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->isFullSegment:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
