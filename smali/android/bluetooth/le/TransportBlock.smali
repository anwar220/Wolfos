# classes.dex

.class public final Landroid/bluetooth/le/TransportBlock;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TransportBlock"


# instance fields
.field private final mOrgId:I

.field private final mTdsFlags:I

.field private final mTransportData:[B

.field private final mTransportDataLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/le/TransportBlock$1;

    invoke-direct {v0}, Landroid/bluetooth/le/TransportBlock$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/TransportBlock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    iput p2, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    iput p3, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    iput-object p4, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    if-lez v0, :cond_1f

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_22

    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    :goto_22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/TransportBlock-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/TransportBlock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/le/TransportBlock;

    invoke-virtual {p0}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public getOrgId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    return v0
.end method

.method public getTdsFlags()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    return v0
.end method

.method public getTransportData()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    return-object v0
.end method

.method public getTransportDataLength()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    return v0
.end method

.method public toByteArray()[B
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportBlock;->totalBytes()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1
    :try_end_25
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v1

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error converting to byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportBlock"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public totalBytes()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    if-eqz v0, :cond_16

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_16
    return-void
.end method
