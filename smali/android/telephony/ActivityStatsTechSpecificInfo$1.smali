# classes3.dex

.class Landroid/telephony/ActivityStatsTechSpecificInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ActivityStatsTechSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ActivityStatsTechSpecificInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ActivityStatsTechSpecificInfo;
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x5

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ActivityStatsTechSpecificInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/ActivityStatsTechSpecificInfo;
    .registers 3

    new-array v0, p1, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo$1;->newArray(I)[Landroid/telephony/ActivityStatsTechSpecificInfo;

    move-result-object p1

    return-object p1
.end method
