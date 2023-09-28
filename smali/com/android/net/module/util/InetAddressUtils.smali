# classes4.dex

.class public Lcom/android/net/module/util/InetAddressUtils;
.super Ljava/lang/Object;


# static fields
.field private static final INET6_ADDR_LENGTH:I = 0x10


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V
    .registers 7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_27

    move-object v1, p1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_27
    return-void
.end method

.method public static unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    invoke-static {v1, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1

    return-object v1

    :cond_1e
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_22
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    move-exception v2

    return-object v1
.end method
