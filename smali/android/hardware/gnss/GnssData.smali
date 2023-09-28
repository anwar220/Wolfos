# classes2.dex

.class public Landroid/hardware/gnss/GnssData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/GnssData$GnssAgc;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clock:Landroid/hardware/gnss/GnssClock;

.field public elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

.field public gnssAgcs:[Landroid/hardware/gnss/GnssData$GnssAgc;

.field public measurements:[Landroid/hardware/gnss/GnssMeasurement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/gnss/GnssData$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssData$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/gnss/GnssData$GnssAgc;

    iput-object v0, p0, Landroid/hardware/gnss/GnssData;->gnssAgcs:[Landroid/hardware/gnss/GnssData$GnssAgc;

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

    invoke-direct {p0, v4}, Landroid/hardware/gnss/GnssData;->describeContents(Ljava/lang/Object;)I

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

    iget-object v1, p0, Landroid/hardware/gnss/GnssData;->measurements:[Landroid/hardware/gnss/GnssMeasurement;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/gnss/GnssData;->clock:Landroid/hardware/gnss/GnssClock;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/gnss/GnssData;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/gnss/GnssData;->gnssAgcs:[Landroid/hardware/gnss/GnssData$GnssAgc;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssData;->describeContents(Ljava/lang/Object;)I

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

    if-lt v1, v2, :cond_a2

    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_a0

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
    sget-object v2, Landroid/hardware/gnss/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/GnssMeasurement;

    iput-object v2, p0, Landroid/hardware/gnss/GnssData;->measurements:[Landroid/hardware/gnss/GnssMeasurement;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_a0

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
    sget-object v2, Landroid/hardware/gnss/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/GnssClock;

    iput-object v2, p0, Landroid/hardware/gnss/GnssData;->clock:Landroid/hardware/gnss/GnssClock;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_a0

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
    sget-object v2, Landroid/hardware/gnss/ElapsedRealtime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/ElapsedRealtime;

    iput-object v2, p0, Landroid/hardware/gnss/GnssData;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_a0

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
    sget-object v2, Landroid/hardware/gnss/GnssData$GnssAgc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/GnssData$GnssAgc;

    iput-object v2, p0, Landroid/hardware/gnss/GnssData;->gnssAgcs:[Landroid/hardware/gnss/GnssData$GnssAgc;
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_a0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9a

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_9a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_a0
    move-exception v2

    goto :goto_aa

    :cond_a2
    :try_start_a2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_a0

    :goto_aa
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_b3

    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b3
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

    iget-object v1, p0, Landroid/hardware/gnss/GnssData;->measurements:[Landroid/hardware/gnss/GnssMeasurement;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssData;->clock:Landroid/hardware/gnss/GnssClock;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssData;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssData;->gnssAgcs:[Landroid/hardware/gnss/GnssData$GnssAgc;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
