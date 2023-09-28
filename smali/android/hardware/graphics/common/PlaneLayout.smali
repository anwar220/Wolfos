# classes2.dex

.class public Landroid/hardware/graphics/common/PlaneLayout;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/PlaneLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

.field public heightInSamples:J

.field public horizontalSubsampling:J

.field public offsetInBytes:J

.field public sampleIncrementInBits:J

.field public strideInBytes:J

.field public totalSizeInBytes:J

.field public verticalSubsampling:J

.field public widthInSamples:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/graphics/common/PlaneLayout$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/PlaneLayout$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/PlaneLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->offsetInBytes:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->sampleIncrementInBits:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->strideInBytes:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->widthInSamples:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->heightInSamples:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->totalSizeInBytes:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->horizontalSubsampling:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->verticalSubsampling:J

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Landroid/hardware/graphics/common/PlaneLayout;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return v1

    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_26
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/PlaneLayout;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_122

    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_120

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
    sget-object v2, Landroid/hardware/graphics/common/PlaneLayoutComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/graphics/common/PlaneLayoutComponent;

    iput-object v2, p0, Landroid/hardware/graphics/common/PlaneLayout;->components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->offsetInBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->sampleIncrementInBits:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->strideInBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->widthInSamples:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->heightInSamples:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->totalSizeInBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->horizontalSubsampling:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/graphics/common/PlaneLayout;->verticalSubsampling:J
    :try_end_110
    .catchall {:try_start_10a .. :try_end_110} :catchall_120

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11a

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_11a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_120
    move-exception v2

    goto :goto_12a

    :cond_122
    :try_start_122
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_120

    :goto_12a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_133

    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_133
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

    iget-object v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->offsetInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->sampleIncrementInBits:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->strideInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->widthInSamples:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->heightInSamples:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->totalSizeInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->horizontalSubsampling:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->verticalSubsampling:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
