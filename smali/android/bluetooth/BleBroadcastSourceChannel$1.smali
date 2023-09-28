# classes.dex

.class Landroid/bluetooth/BleBroadcastSourceChannel$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BleBroadcastSourceChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BleBroadcastSourceChannel;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BleBroadcastSourceChannel;
    .registers 16

    const-string v0, "BleBroadcastSourceChannel"

    const-string v1, "createFromParcel>"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceChannel;->-$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/4 v2, 0x0

    if-lez v11, :cond_25

    new-array v2, v11, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    move-object v12, v2

    goto :goto_26

    :cond_25
    move-object v12, v2

    :goto_26
    new-instance v13, Landroid/bluetooth/BleBroadcastSourceChannel;

    move-object v2, v13

    move v3, v1

    move-object v4, v8

    move v5, v9

    move v6, v10

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/BleBroadcastSourceChannel;-><init>(ILjava/lang/String;ZI[B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromParcel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->-$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BleBroadcastSourceChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BleBroadcastSourceChannel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/BleBroadcastSourceChannel;
    .registers 3

    new-array v0, p1, [Landroid/bluetooth/BleBroadcastSourceChannel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BleBroadcastSourceChannel$1;->newArray(I)[Landroid/bluetooth/BleBroadcastSourceChannel;

    move-result-object p1

    return-object p1
.end method
