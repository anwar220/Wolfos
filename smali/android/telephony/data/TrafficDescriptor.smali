# classes3.dex

.class public final Landroid/telephony/data/TrafficDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/TrafficDescriptor$Builder;,
        Landroid/telephony/data/TrafficDescriptor$OsAppId;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDnn:Ljava/lang/String;

.field private final mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/data/TrafficDescriptor$1;

    invoke-direct {v0}, Landroid/telephony/data/TrafficDescriptor$1;-><init>()V

    sput-object v0, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-direct {v2, v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    move-object v1, v2

    :cond_16
    iput-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor;->enforceAllowedIds()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/data/TrafficDescriptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/TrafficDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    new-instance v1, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-direct {v1, p2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    move-object v0, v1

    :cond_e
    iput-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor;->enforceAllowedIds()V

    return-void
.end method

.method private enforceAllowedIds()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3c

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OS id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_7e

    invoke-static {}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->-$$Nest$sfgetALLOWED_APP_IDS()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v1}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_7e

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only allowing one of the following "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->-$$Nest$sfgetALLOWED_APP_IDS()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    :goto_7e
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/TrafficDescriptor;

    iget-object v3, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    iget-object v4, v2, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public getDataNetworkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    return-object v0
.end method

.method public getOsAppId()[B
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficDescriptor={mDnn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
