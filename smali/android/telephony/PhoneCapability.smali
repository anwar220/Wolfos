# classes3.dex

.class public final Landroid/telephony/PhoneCapability;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneCapability$DeviceNrCapability;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhoneCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

.field public static final DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

.field public static final DEVICE_NR_CAPABILITY_NSA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DEVICE_NR_CAPABILITY_SA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mDeviceNrCapabilities:[I

.field private final mLogicalModemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxActiveDataSubscriptions:I

.field private final mMaxActiveVoiceSubscriptions:I

.field private final mNetworkValidationBeforeSwitchSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Landroid/telephony/ModemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    new-instance v3, Landroid/telephony/ModemInfo;

    invoke-direct {v3, v2, v1, v2, v2}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    move-object v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [I

    new-instance v10, Landroid/telephony/PhoneCapability;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, v10

    move-object v7, v3

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    sput-object v10, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroid/telephony/PhoneCapability;

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    sput-object v10, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    new-instance v0, Landroid/telephony/PhoneCapability$1;

    invoke-direct {v0}, Landroid/telephony/PhoneCapability$1;-><init>()V

    sput-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;Z[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;Z[I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    iput p2, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    if-nez p3, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    :cond_f
    move-object v0, p3

    :goto_10
    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    iput-boolean p4, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    iput-object p5, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    const-class v1, Landroid/telephony/ModemInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/ModemInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PhoneCapability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhoneCapability;-><init>(Landroid/os/Parcel;)V

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

    const/4 v0, 0x0

    if-eqz p1, :cond_43

    instance-of v1, p1, Landroid/telephony/PhoneCapability;

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_43

    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    return v1

    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/telephony/PhoneCapability;

    iget v3, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    iget v4, v2, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    if-ne v3, v4, :cond_41

    iget v3, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    iget v4, v2, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    iget-boolean v4, v2, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    if-ne v3, v4, :cond_41

    iget-object v3, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    iget-object v4, v2, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    nop

    :goto_42
    return v0

    :cond_43
    :goto_43
    return v0
.end method

.method public getDeviceNrCapabilities()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_7
    return-object v0
.end method

.method public getLogicalModemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    return-object v0
.end method

.method public getMaxActiveDataSubscriptions()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    return v0
.end method

.method public getMaxActiveVoiceSubscriptions()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNetworkValidationBeforeSwitchSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMaxActiveVoiceSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxActiveDataSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkValidationBeforeSwitchSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDeviceNrCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
