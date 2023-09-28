# classes.dex

.class public final Landroid/bluetooth/BleBroadcastSourceChannel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BleBroadcastSourceChannel"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIndex:I

.field private mMetadata:[B

.field private mStatus:Z

.field private mSubGroupId:I


# direct methods
.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceChannel;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BleBroadcastSourceChannel$1;

    invoke-direct {v0}, Landroid/bluetooth/BleBroadcastSourceChannel$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BleBroadcastSourceChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZI[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    iput-object p2, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    iput p4, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mSubGroupId:I

    if-eqz p5, :cond_1a

    array-length v0, p5

    if-eqz v0, :cond_1a

    array-length v0, p5

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mMetadata:[B

    array-length v1, p5

    const/4 v2, 0x0

    invoke-static {p5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/bluetooth/BleBroadcastSourceChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceChannel;

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    if-ne v2, v3, :cond_1b

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    if-ne v2, v3, :cond_1b

    iget-boolean v2, v0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    iget-boolean v3, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    if-ne v2, v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :cond_1c
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    return v0
.end method

.method public getMetadata()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mMetadata:[B

    return-object v0
.end method

.method public getStatus()Z
    .registers 2

    iget-boolean v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    return v0
.end method

.method public getSubGroupId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mSubGroupId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setStatus(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const-string v0, "BleBroadcastSourceChannel"

    const-string/jumbo v1, "writeToParcel>"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceChannel;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mStatus:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mSubGroupId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mMetadata:[B

    if-eqz v1, :cond_2a

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceChannel;->mMetadata:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2e

    :cond_2a
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToParcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceChannel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceChannel;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
