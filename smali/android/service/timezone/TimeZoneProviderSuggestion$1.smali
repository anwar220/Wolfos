# classes3.dex

.class Landroid/service/timezone/TimeZoneProviderSuggestion$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/timezone/TimeZoneProviderSuggestion;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderSuggestion;
    .registers 7

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    new-instance v4, Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-direct {v4, v0, v2, v3, v1}, Landroid/service/timezone/TimeZoneProviderSuggestion;-><init>(Ljava/util/List;JLandroid/service/timezone/TimeZoneProviderSuggestion-IA;)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderSuggestion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/timezone/TimeZoneProviderSuggestion;
    .registers 3

    new-array v0, p1, [Landroid/service/timezone/TimeZoneProviderSuggestion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderSuggestion$1;->newArray(I)[Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object p1

    return-object p1
.end method
