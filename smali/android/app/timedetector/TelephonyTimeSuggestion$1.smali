# classes.dex

.class Landroid/app/timedetector/TelephonyTimeSuggestion$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/TelephonyTimeSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/timedetector/TelephonyTimeSuggestion;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 3

    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->-$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 3

    new-array v0, p1, [Landroid/app/timedetector/TelephonyTimeSuggestion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$1;->newArray(I)[Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object p1

    return-object p1
.end method
