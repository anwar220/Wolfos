# classes2.dex

.class Landroid/location/Address$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Address;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;
    .registers 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_19
    nop

    new-instance v3, Landroid/location/Address;

    invoke-direct {v3, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_52

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmAddressLines(Landroid/location/Address;Ljava/util/HashMap;)V

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_51

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Landroid/location/Address;->-$$Nest$fgetmAddressLines(Landroid/location/Address;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroid/location/Address;->-$$Nest$fgetmMaxAddressLineIndex(Landroid/location/Address;)I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v3, v8}, Landroid/location/Address;->-$$Nest$fputmMaxAddressLineIndex(Landroid/location/Address;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_51
    goto :goto_5a

    :cond_52
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmAddressLines(Landroid/location/Address;Ljava/util/HashMap;)V

    const/4 v5, -0x1

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmMaxAddressLineIndex(Landroid/location/Address;I)V

    :goto_5a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmFeatureName(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmAdminArea(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmSubAdminArea(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmLocality(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmSubLocality(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmThoroughfare(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmSubThoroughfare(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmPremises(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmPostalCode(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmCountryCode(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmCountryName(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_b1

    move v5, v6

    goto :goto_b2

    :cond_b1
    move v5, v7

    :goto_b2
    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmHasLatitude(Landroid/location/Address;Z)V

    invoke-static {v3}, Landroid/location/Address;->-$$Nest$fgetmHasLatitude(Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v3, v8, v9}, Landroid/location/Address;->-$$Nest$fputmLatitude(Landroid/location/Address;D)V

    :cond_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_c9

    goto :goto_ca

    :cond_c9
    move v6, v7

    :goto_ca
    invoke-static {v3, v6}, Landroid/location/Address;->-$$Nest$fputmHasLongitude(Landroid/location/Address;Z)V

    invoke-static {v3}, Landroid/location/Address;->-$$Nest$fgetmHasLongitude(Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_da

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/location/Address;->-$$Nest$fputmLongitude(Landroid/location/Address;D)V

    :cond_da
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmPhone(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmUrl(Landroid/location/Address;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmExtras(Landroid/location/Address;Landroid/os/Bundle;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/Address$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/Address;
    .registers 3

    new-array v0, p1, [Landroid/location/Address;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/Address$1;->newArray(I)[Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method
