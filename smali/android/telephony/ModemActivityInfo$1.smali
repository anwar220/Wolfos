# classes3.dex

.class Landroid/telephony/ModemActivityInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ModemActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ModemActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;
    .registers 15

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v0, Landroid/telephony/ActivityStatsTechSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/os/Parcelable;

    array-length v0, v10

    new-array v11, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v0, 0x0

    :goto_19
    array-length v1, v10

    if-ge v0, v1, :cond_25

    aget-object v1, v10, v0

    check-cast v1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    aput-object v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    new-instance v12, Landroid/telephony/ModemActivityInfo;

    move-object v0, v12

    move-wide v1, v6

    move v3, v8

    move v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    return-object v12
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/ModemActivityInfo;
    .registers 3

    new-array v0, p1, [Landroid/telephony/ModemActivityInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->newArray(I)[Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    return-object p1
.end method
