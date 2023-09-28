# classes3.dex

.class public final Landroid/telephony/DataSpecificRegistrationInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataSpecificRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isDcNrRestricted:Z

.field public final isEnDcAvailable:Z

.field public final isNrAvailable:Z

.field private final mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

.field public final maxDataCalls:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo$1;

    invoke-direct {v0}, Landroid/telephony/DataSpecificRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/DataSpecificRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZLandroid/telephony/VopsSupportInfo;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput-boolean p2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iput-boolean p3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iput-boolean p4, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iput-object p5, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    const-class v0, Landroid/telephony/VopsSupportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/VopsSupportInfo;

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/DataSpecificRegistrationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/telephony/DataSpecificRegistrationInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iget-object v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

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
    instance-of v1, p1, Landroid/telephony/DataSpecificRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/DataSpecificRegistrationInfo;

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iget v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    if-ne v3, v4, :cond_30

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    if-ne v3, v4, :cond_30

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    if-ne v3, v4, :cond_30

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iget-object v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    return v0
.end method

.method public getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    instance-of v1, v0, Landroid/telephony/LteVopsSupportInfo;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/telephony/LteVopsSupportInfo;

    goto :goto_f

    :cond_9
    new-instance v0, Landroid/telephony/LteVopsSupportInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    :goto_f
    return-object v0
.end method

.method public getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;
    .registers 2

    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " maxDataCalls = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDcNrRestricted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isNrAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isEnDcAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
