# classes3.dex

.class Landroid/service/timezone/TimeZoneProviderEvent$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/timezone/TimeZoneProviderEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 15

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v6, 0x0

    move-object v0, v12

    move v1, v7

    move-wide v2, v8

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderEvent-IA;)V

    return-object v12
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 3

    new-array v0, p1, [Landroid/service/timezone/TimeZoneProviderEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderEvent$1;->newArray(I)[Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    return-object p1
.end method
