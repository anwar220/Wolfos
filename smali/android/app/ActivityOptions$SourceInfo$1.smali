# classes.dex

.class Landroid/app/ActivityOptions$SourceInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions$SourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/ActivityOptions$SourceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityOptions$SourceInfo;
    .registers 6

    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions$SourceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityOptions$SourceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/ActivityOptions$SourceInfo;
    .registers 3

    new-array v0, p1, [Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions$SourceInfo$1;->newArray(I)[Landroid/app/ActivityOptions$SourceInfo;

    move-result-object p1

    return-object p1
.end method
