# classes.dex

.class Landroid/app/contentsuggestions/ContentClassification$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ContentClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/contentsuggestions/ContentClassification;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/contentsuggestions/ContentClassification;
    .registers 5

    new-instance v0, Landroid/app/contentsuggestions/ContentClassification;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/contentsuggestions/ContentClassification;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/contentsuggestions/ContentClassification$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/contentsuggestions/ContentClassification;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/contentsuggestions/ContentClassification;
    .registers 3

    new-array v0, p1, [Landroid/app/contentsuggestions/ContentClassification;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/contentsuggestions/ContentClassification$1;->newArray(I)[Landroid/app/contentsuggestions/ContentClassification;

    move-result-object p1

    return-object p1
.end method