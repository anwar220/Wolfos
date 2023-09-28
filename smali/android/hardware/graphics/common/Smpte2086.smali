# classes2.dex

.class public Landroid/hardware/graphics/common/Smpte2086;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/Smpte2086;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public maxLuminance:F

.field public minLuminance:F

.field public primaryBlue:Landroid/hardware/graphics/common/XyColor;

.field public primaryGreen:Landroid/hardware/graphics/common/XyColor;

.field public primaryRed:Landroid/hardware/graphics/common/XyColor;

.field public whitePoint:Landroid/hardware/graphics/common/XyColor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/graphics/common/Smpte2086$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/Smpte2086$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/Smpte2086;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    iput v0, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_10
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

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
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_da

    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d8

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
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_d8

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
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_66
    :try_start_66
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_86

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_80

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_86
    :try_start_86
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a6

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a0

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_a0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a6
    :try_start_a6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c2

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bc

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_bc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c2
    :try_start_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F
    :try_end_c8
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_d8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d2

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_d2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_d8
    move-exception v2

    goto :goto_e2

    :cond_da
    :try_start_da
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e2
    .catchall {:try_start_da .. :try_end_e2} :catchall_d8

    :goto_e2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_eb

    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_eb
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

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
