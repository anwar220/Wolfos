# classes3.dex

.class Landroid/util/MemoryIntArray$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MemoryIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/util/MemoryIntArray;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/util/MemoryIntArray;
    .registers 5

    :try_start_0
    new-instance v0, Landroid/util/MemoryIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/util/MemoryIntArray;-><init>(Landroid/os/Parcel;Landroid/util/MemoryIntArray-IA;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error unparceling MemoryIntArray"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/util/MemoryIntArray$1;->createFromParcel(Landroid/os/Parcel;)Landroid/util/MemoryIntArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/util/MemoryIntArray;
    .registers 3

    new-array v0, p1, [Landroid/util/MemoryIntArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/util/MemoryIntArray$1;->newArray(I)[Landroid/util/MemoryIntArray;

    move-result-object p1

    return-object p1
.end method