# classes3.dex

.class Landroid/print/PrinterInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/print/PrinterInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterInfo;
    .registers 4

    new-instance v0, Landroid/print/PrinterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;Landroid/print/PrinterInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/print/PrinterInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/print/PrinterInfo;
    .registers 3

    new-array v0, p1, [Landroid/print/PrinterInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/print/PrinterInfo$1;->newArray(I)[Landroid/print/PrinterInfo;

    move-result-object p1

    return-object p1
.end method