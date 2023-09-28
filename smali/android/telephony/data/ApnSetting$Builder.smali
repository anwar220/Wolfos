# classes3.dex

.class public Landroid/telephony/data/ApnSetting$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/ApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlwaysOn:Z

.field private mApnName:Ljava/lang/String;

.field private mApnSetId:I

.field private mApnTypeBitmask:I

.field private mAuthType:I

.field private mCarrierEnabled:Z

.field private mCarrierId:I

.field private mEntryName:Ljava/lang/String;

.field private mId:I

.field private mLingeringNetworkTypeBitmask:J

.field private mMaxConns:I

.field private mMaxConnsTime:I

.field private mMmsProxyAddress:Ljava/lang/String;

.field private mMmsProxyPort:I

.field private mMmsc:Landroid/net/Uri;

.field private mModemCognitive:Z

.field private mMtuV4:I

.field private mMtuV6:I

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:I

.field private mNetworkTypeBitmask:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mProfileId:I

.field private mProtocol:I

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mRoamingProtocol:I

.field private mSkip464Xlat:I

.field private mUser:Ljava/lang/String;

.field private mWaitTime:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlwaysOn(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAlwaysOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApnName(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApnSetId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnSetId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApnTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuthType(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierEnabled(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntryName(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLingeringNetworkTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mLingeringNetworkTypeBitmask:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxConns(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxConnsTime(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMmsProxyAddress(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMmsProxyPort(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMmsc(Landroid/telephony/data/ApnSetting$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModemCognitive(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMtuV4(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV4:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMtuV6(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV6:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMvnoMatchData(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMvnoType(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOperatorNumeric(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassword(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProtocol(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyAddress(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyPort(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingProtocol(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkip464Xlat(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUser(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitTime(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/data/ApnSetting;
    .registers 4

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    and-int/lit16 v0, v0, 0x7fff

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_5e

    :cond_18
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_58

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_36

    return-object v1

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mms proxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be a hostname, not a url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Landroid/telephony/data/ApnSetting;

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting-IA;)V

    return-object v0

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public buildWithoutCheck()Landroid/telephony/data/ApnSetting;
    .registers 3

    new-instance v0, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting-IA;)V

    return-object v0
.end method

.method public setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mAlwaysOn:Z

    return-object p0
.end method

.method public setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    return-object p0
.end method

.method public setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnSetId:I

    return-object p0
.end method

.method public setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    return-object p0
.end method

.method public setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    return-object p0
.end method

.method public setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    return-object p0
.end method

.method public setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    return-object p0
.end method

.method public setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    return-object p0
.end method

.method public setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mLingeringNetworkTypeBitmask:J

    return-object p0
.end method

.method public setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    return-object p0
.end method

.method public setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    return-object p0
.end method

.method public setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    return-object p0
.end method

.method public setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    return-object p0
.end method

.method public setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    return-object p0
.end method

.method public setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV4:I

    return-object p0
.end method

.method public setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV6:I

    return-object p0
.end method

.method public setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    return-object p0
.end method

.method public setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    return-object p0
.end method

.method public setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    return-object p0
.end method

.method public setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setPersistent(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    return-object p0
.end method

.method public setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    return-object p0
.end method

.method public setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    return-object p0
.end method

.method public setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    return-object p0
.end method

.method public setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    return-object p0
.end method

.method public setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    return-object p0
.end method
